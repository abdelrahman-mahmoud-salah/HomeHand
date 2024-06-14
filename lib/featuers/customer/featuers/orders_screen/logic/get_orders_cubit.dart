import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:homehand/core/helper/shared_perefernce.dart';
import 'package:homehand/featuers/customer/featuers/orders_screen/logic/get_orders_state.dart';
import 'package:homehand/featuers/woeker/workerProfile_worker_screen/data/data_repo/get_all_orders_data_repo.dart';
import 'package:homehand/featuers/woeker/workerProfile_worker_screen/data/model/get_all_orders_to_workers.dart';

class GetUOrdersCubit extends Cubit<GetUOrdersState> {
  final getallordersrepo _getUOrdersRepo;

  GetUOrdersCubit(this._getUOrdersRepo) : super(const GetUOrdersState.loading());

  final formKey = GlobalKey<FormState>();
  List<Order> complete = [];
  List<Order> pending = [];
  List<Order> canceling = [];


  final String? id = CacheHelper().getString('ID');

  void emitGetOrdersStates() async {
    print(CacheHelper().getString('token'));
    emit(const GetUOrdersState.loading());
    try {
      final response = await _getUOrdersRepo.getallorders();
      response.when(success: (data) {
        if (data.workerList.isEmpty) {
          emit(GetUOrdersState.empty());
        } else {
          complete.clear();
          pending.clear();
          canceling.clear();
          for (var order in data.workerList) {
            if (order.userId?.id == id) {
              if (order.orderStatus == 'Pending') {
                pending.add(order);
              } else if (order.orderStatus == 'Completed') {
                complete.add(order);
              }
              else if (order.orderStatus == 'Cancelled') {
                canceling.add(order);
              }
            }
          }
          emit(GetUOrdersState.success(data));
        }
      }, failure: (errorHandler) {
        emit(GetUOrdersState.error(error: errorHandler.toString()));
      },);
    } catch (e) {
      emit(GetUOrdersState.error(error: 'An unexpected error occurred: $e'));
    }
  }
}
