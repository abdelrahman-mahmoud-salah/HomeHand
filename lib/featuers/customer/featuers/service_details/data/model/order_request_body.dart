// import 'dart:io';
//
// import 'package:json_annotation/json_annotation.dart';
//
// part 'order_request_body.g.dart';
//
// @JsonSerializable()
// class OrderRequest {
//   final String? workerId;
//   final int orderPrice;
//   final String address;
//   final String paymentMethod;
//   final String paymentStatus;
//   final String orderStatus;
//   final int rating;
//   final String feedBack;
//   final File orderImages;
//
//   OrderRequest({
//     required this.workerId,
//     required this.orderPrice,
//     required this.address,
//     required this.paymentMethod,
//     required this.paymentStatus,
//     required this.orderStatus,
//     required this.rating,
//     required this.feedBack,
//     required this.orderImages,
//   });
//
//   factory OrderRequest.fromJson(Map<String, dynamic> json) => _$OrderRequestFromJson(json);
//   Map<String, dynamic> toJson() => _$OrderRequestToJson(this);
// }
