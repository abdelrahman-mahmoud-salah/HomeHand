import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:homehand/featuers/customer/featuers/service_details/data/model/order_repo_body.dart';
import 'package:homehand/featuers/woeker/workerProfile_worker_screen/data/model/update_order_repo.dart';

part 'state_order_state.freezed.dart';

@freezed
class stateOrderState with _$stateOrderState {
  const factory stateOrderState.initial() = _Initial;
  const factory stateOrderState.loading() = Loading;
  const factory stateOrderState.success(updateOrderResponse data) = Success;
  const factory stateOrderState.error({required String error}) = Error;
}
