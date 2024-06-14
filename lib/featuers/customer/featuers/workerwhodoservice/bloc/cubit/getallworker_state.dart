import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:homehand/featuers/customer/featuers/workerwhodoservice/data/model/Info_about_who_work_service_model.dart';

part 'getallworker_state.freezed.dart';

@freezed
class Getallworker<T> with _$Getallworker<T> {
  const factory Getallworker.loading() = Loading;
  const factory Getallworker.empty() = Empty;
  const factory Getallworker.success(WorkerGetAllData data) = Success;
  const factory Getallworker.error({required String error}) = Error;
}
