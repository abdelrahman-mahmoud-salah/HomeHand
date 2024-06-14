// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_repo_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

COrder _$COrderFromJson(Map<String, dynamic> json) => COrder(
      id: json['_id'] as String,
      userId: json['userId'] as String,
      workerId: json['workerId'] as String,
      orderPrice: (json['orderPrice'] as num).toInt(),
      address: json['address'] as String,
      paymentMethod: json['paymentMethod'] as String,
      paymentStatus: json['paymentStatus'] as String,
      orderStatus: json['orderStatus'] as String,
      feedBack: json['feedBack'] as String,
      orderImages: (json['orderImages'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      orderDate: DateTime.parse(json['orderDate'] as String),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      v: (json['__v'] as num).toInt(),
    );

Map<String, dynamic> _$COrderToJson(COrder instance) => <String, dynamic>{
      '_id': instance.id,
      'userId': instance.userId,
      'workerId': instance.workerId,
      'orderPrice': instance.orderPrice,
      'address': instance.address,
      'paymentMethod': instance.paymentMethod,
      'paymentStatus': instance.paymentStatus,
      'orderStatus': instance.orderStatus,
      'feedBack': instance.feedBack,
      'orderImages': instance.orderImages,
      'orderDate': instance.orderDate.toIso8601String(),
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      '__v': instance.v,
    };

OrderResponse _$OrderResponseFromJson(Map<String, dynamic> json) =>
    OrderResponse(
      success: json['success'] as bool,
      data: (json['data'] as List<dynamic>)
          .map((e) => COrder.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$OrderResponseToJson(OrderResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.data,
    };
