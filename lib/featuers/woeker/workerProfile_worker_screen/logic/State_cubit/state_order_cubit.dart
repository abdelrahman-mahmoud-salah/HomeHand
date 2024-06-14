import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:homehand/featuers/woeker/workerProfile_worker_screen/data/data_repo/update_state_repo.dart';
import 'package:homehand/featuers/woeker/workerProfile_worker_screen/data/model/update_order_repo.dart';
import 'package:homehand/featuers/woeker/workerProfile_worker_screen/data/model/update_order_request.dart';
import 'package:homehand/featuers/woeker/workerProfile_worker_screen/logic/State_cubit/state_order_state.dart';

class stateOrderCubit extends Cubit<stateOrderState> {
  final stateordersrepo _orderRepo;

  stateOrderCubit(this._orderRepo) : super(const stateOrderState.initial());
  String status='';
  final formKey = GlobalKey<FormState>();

  void emitstateOrderState() async {
    emit(const stateOrderState.loading());
    final response =
        await _orderRepo.updateOrderState(OrderStatusResponse(orderStatus:status));
    response.when(
      success: (data) {
        emit(stateOrderState.success(data));
      },
      failure: (error) {
        emit(stateOrderState.error(
            error: error.apiErrorModel.message ?? 'An unknown error occurred'));
      },
    );
  }
}
