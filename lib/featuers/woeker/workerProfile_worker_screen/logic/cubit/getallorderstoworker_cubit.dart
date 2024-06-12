import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:homehand/featuers/woeker/workerProfile_worker_screen/data/data_repo/get_all_orders_data_repo.dart';
import 'package:homehand/featuers/woeker/workerProfile_worker_screen/data/model/get_all_orders_to_workers.dart';

import 'package:homehand/featuers/woeker/workerProfile_worker_screen/logic/cubit/getallorderstoworker_state.dart';

class GetallOrderstoWorkerCubit extends Cubit<GetallorderstoworkerState> {
  GetallOrderstoWorkerCubit(this._workRepo)
      : super(GetallorderstoworkerState.initial());
  final getallordersrepo _workRepo;
  Future<void> emitgetallworkerStates() async {
    emit(const GetallorderstoworkerState.loading());
    final response = await _workRepo.getallorders();
     response.when(
      success: (data) {
        if (data.workerList.isEmpty) {
          emit(const GetallorderstoworkerState.emty());
        } else {
          
          emit(GetallorderstoworkerState.loaded(data));
        }
      },
      failure: (errorHandler) {
        emit(GetallorderstoworkerState.error(errorHandler.apiErrorModel));
      },
    );
  }
}
