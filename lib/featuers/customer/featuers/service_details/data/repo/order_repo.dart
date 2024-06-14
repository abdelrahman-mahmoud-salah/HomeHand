import 'dart:io';
import 'package:homehand/core/networking/api_error_handeler.dart';
import 'package:homehand/core/networking/api_result.dart';
import 'package:homehand/core/networking/api_services.dart';
import 'package:homehand/featuers/customer/featuers/service_details/data/model/order_repo_body.dart';

class OrderRepo {
  final ApiService _apiService;

  OrderRepo(this._apiService);

  Future<ApiResult<OrderResponse>> createOrder({
    required String workerId,
    required int orderPrice,
    required String description,
    required String address,
    required String paymentMethod,
    required String paymentStatus,
    required String orderStatus,
    required int rating,
    required String feedBack,
    required File orderImages,
  }) async {
    try {
      final response = await _apiService.placeOrder(
        workerId: workerId,
        orderPrice: orderPrice,
        description:description,
        address: address,
        paymentMethod: paymentMethod,
        paymentStatus: paymentStatus,
        orderStatus: orderStatus,
        rating: rating,
        feedBack: feedBack,
        orderImages: orderImages,
      );
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }
}
