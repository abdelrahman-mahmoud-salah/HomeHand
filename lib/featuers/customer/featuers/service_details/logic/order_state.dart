import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:homehand/featuers/customer/featuers/service_details/data/model/order_repo_body.dart';

part 'order_state.freezed.dart';

@freezed
class OrderState with _$OrderState {
  const factory OrderState.initial() = _Initial;
  const factory OrderState.loading() = Loading;
  const factory OrderState.uploadimage() = UploadImage;
  const factory OrderState.success(OrderResponse data) = Success;
  const factory OrderState.error({required String error}) = Error;
}
