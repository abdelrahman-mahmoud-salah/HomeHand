import 'package:json_annotation/json_annotation.dart';

part 'order_repo_body.g.dart';

@JsonSerializable()
class COrder {
  @JsonKey(name: '_id')
  final String id;
  final String userId;
  final String workerId;
  final int orderPrice;
  final String address;
  final String paymentMethod;
  final String paymentStatus;
  final String orderStatus;
  final String feedBack;
  final List<String> orderImages;
  final DateTime orderDate;
  final DateTime createdAt;
  final DateTime updatedAt;
  @JsonKey(name: '__v')
  final int v;

  COrder({
    required this.id,
    required this.userId,
    required this.workerId,
    required this.orderPrice,
    required this.address,
    required this.paymentMethod,
    required this.paymentStatus,
    required this.orderStatus,
    required this.feedBack,
    required this.orderImages,
    required this.orderDate,
    required this.createdAt,
    required this.updatedAt,
    required this.v,
  });

  factory COrder.fromJson(Map<String, dynamic> json) => _$COrderFromJson(json);

  Map<String, dynamic> toJson() => _$COrderToJson(this);
}

@JsonSerializable()
class OrderResponse {
  final bool success;
  final List<COrder> data;

  OrderResponse({required this.success, required this.data});

  factory OrderResponse.fromJson(Map<String, dynamic> json) => _$OrderResponseFromJson(json);

  Map<String, dynamic> toJson() => _$OrderResponseToJson(this);
}
