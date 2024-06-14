import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:homehand/featuers/woeker/workerProfile_worker_screen/data/model/get_all_orders_to_workers.dart';

part 'get_orders_state.freezed.dart';

@freezed
class GetUOrdersState with _$GetUOrdersState {
  const factory GetUOrdersState.loading() = Loading;
  const factory GetUOrdersState.empty() = Empty;
  const factory GetUOrdersState.success(Allordersworkers data) = Success;
  const factory GetUOrdersState.error({required String error}) = Error;
}
