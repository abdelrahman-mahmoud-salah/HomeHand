import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:homehand/core/networking/api_error_model.dart';
import 'package:homehand/featuers/woeker/workerProfile_worker_screen/data/model/get_all_orders_to_workers.dart';

part 'getallorderstoworker_state.freezed.dart';

@freezed
class GetallorderstoworkerState with _$GetallorderstoworkerState {
  const factory GetallorderstoworkerState.initial() = _Initial;
  const factory GetallorderstoworkerState.loading() = Loading;
  const factory GetallorderstoworkerState.emty() = Emty;
  const factory GetallorderstoworkerState.loaded(Allordersworkers orders) =
      Loaded;
  const factory GetallorderstoworkerState.error(ApiErrorModel errorModel) =
      Error;
}
