// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_order_repo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

updateOrderResponse _$updateOrderResponseFromJson(Map<String, dynamic> json) =>
    updateOrderResponse(
      data: json['data'] == null
          ? null
          : OrderData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$updateOrderResponseToJson(
        updateOrderResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

OrderData _$OrderDataFromJson(Map<String, dynamic> json) => OrderData(
      id: json['_id'] as String?,
      userId: json['userId'] as String?,
      workerId: json['workerId'] as String?,
      orderPrice: (json['orderPrice'] as num?)?.toDouble(),
      address: json['address'] as String?,
      paymentMethod: json['paymentMethod'] as String?,
      paymentStatus: json['paymentStatus'] as String?,
      orderStatus: json['orderStatus'] as String?,
      rating: (json['rating'] as num?)?.toInt(),
      feedBack: json['feedBack'] as String?,
    );

Map<String, dynamic> _$OrderDataToJson(OrderData instance) => <String, dynamic>{
      '_id': instance.id,
      'userId': instance.userId,
      'workerId': instance.workerId,
      'orderPrice': instance.orderPrice,
      'address': instance.address,
      'paymentMethod': instance.paymentMethod,
      'paymentStatus': instance.paymentStatus,
      'orderStatus': instance.orderStatus,
      'rating': instance.rating,
      'feedBack': instance.feedBack,
    };
