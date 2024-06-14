import 'package:json_annotation/json_annotation.dart';

part 'update_order_request.g.dart';

@JsonSerializable()
class OrderStatusResponse {
  final String orderStatus;

  OrderStatusResponse({required this.orderStatus});

  factory OrderStatusResponse.fromJson(Map<String, dynamic> json) =>
      _$OrderStatusResponseFromJson(json);

  Map<String, dynamic> toJson() => _$OrderStatusResponseToJson(this);
}
