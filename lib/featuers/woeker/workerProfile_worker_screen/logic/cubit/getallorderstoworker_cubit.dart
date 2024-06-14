import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:homehand/core/helper/shared_perefernce.dart';
import 'package:homehand/featuers/woeker/workerProfile_worker_screen/data/data_repo/get_all_orders_data_repo.dart';
import 'package:homehand/featuers/woeker/workerProfile_worker_screen/data/model/get_all_orders_to_workers.dart';

import 'package:homehand/featuers/woeker/workerProfile_worker_screen/logic/cubit/getallorderstoworker_state.dart';

class GetallOrderstoWorkerCubit extends Cubit<GetallorderstoworkerState> {
  GetallOrderstoWorkerCubit(this._workRepo)
      : super(GetallorderstoworkerState.initial());
  final getallordersrepo _workRepo;
  List<Order> complete = [];
  List<Order> pending = [];
  List<Order> canceling = [];
  final String? id = CacheHelper().getString('ID');
  Future<void> emitgetallworkerStates() async {
    emit(const GetallorderstoworkerState.loading());
    final response = await _workRepo.getallorders();
     response.when(
      success: (data) {
        if (data.workerList.isEmpty) {
          emit(GetallorderstoworkerState.emty());
        } else {
          complete.clear();
          pending.clear();
          for (var order in data.workerList) {
            if (order.workerId!.worker!.id == id) {
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
          emit(GetallorderstoworkerState.loaded(data));
        }
      },
      failure: (errorHandler) {
        emit(GetallorderstoworkerState.error(errorHandler.apiErrorModel));
      },
    );
  }
}
