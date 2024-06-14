import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../../core/helper/shared_perefernce.dart';
import 'getallworker_state.dart';
import '../../data/model/Info_about_who_work_service_model.dart';
import '../../data/repo/get_all_worker_repo.dart';

class GetallworkerCubit extends Cubit<Getallworker> {
  GetallworkerCubit(this._workRepo) : super(Getallworker.loading());
  final allworkRepo _workRepo;
  Future<void> emitgetallworkerStates() async {
    print(CacheHelper().getString('token'));
    emit(const Getallworker.loading());
    final response = await _workRepo.getAllworker();

   
    response.when(
      success: (data) {
        if (data.workerList.isEmpty) {
          emit(const Getallworker.empty());
        } else {
          
          emit(Getallworker.success(data));
        }
      },
      failure: (errorHandler) {
        emit(Getallworker.error(error: errorHandler.toString()));
      },
    );
  }
}
