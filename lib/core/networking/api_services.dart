import 'dart:io';

import 'package:dio/dio.dart';
import 'package:homehand/core/networking/api_constance.dart';
import 'package:homehand/featuers/Auth/featuers/login/data/model/login_repo_boody.dart';
import 'package:homehand/featuers/Auth/featuers/login/data/model/login_request_boody.dart';
import 'package:homehand/featuers/Auth/featuers/register/data/models/register_user_repo_boody.dart';
import 'package:homehand/featuers/customer/featuers/service_details/data/model/order_repo_body.dart';
import 'package:homehand/featuers/customer/featuers/workerwhodoservice/data/model/Info_about_who_work_service_model.dart';
import 'package:homehand/featuers/woeker/workerProfile_worker_screen/data/model/get_all_orders_to_workers.dart';
import 'package:homehand/featuers/woeker/workerProfile_worker_screen/data/model/update_order_repo.dart';
import 'package:homehand/featuers/woeker/workerProfile_worker_screen/data/model/update_order_request.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:retrofit/http.dart';

part 'api_services.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST(ApiConstants.login)
  Future<LoginResponse> login(
    @Body() LoginRequestBody loginRequestBody,
  );

  @POST(ApiConstants.signup)
  @MultiPart()
  Future<RegisterUserRepo> registerUser({
    @Part() required String firstName,
    @Part() required String secondName,
    @Part() required String email,
    @Part() required String password,
    @Part() required String userType,
    @Part() required String gender,
    @Part() required String Phone,
    @Part() required String address,
    @Part() required File profile,
  });
  @POST(ApiConstants.signupWorker)
  @MultiPart()
  Future<RegisterUserRepo> registerWorker({
    @Part() required String firstName,
    @Part() required String secondName,
    @Part() required String email,
    @Part() required String password,
    @Part() required String userType,
    @Part() required String gender,
    @Part() required String Phone,
    @Part() required String address,
    @Part() required String specialization,
    @Part() required File profileImage,
    @JsonKey(name: 'Id_Image') @Part() required File idImage,
  });

  @GET(ApiConstants.getallworker)
  Future<WorkerGetAllData> getallworker();
  @GET(ApiConstants.getallorder)
  Future<Allordersworkers> getallorder();

  @POST(ApiConstants.createOrder)
  Future<OrderResponse> placeOrder({
    @Part() required String workerId,
    @Part() required int orderPrice,
    @Part() required String address,
    @Part() required String paymentMethod,
    @Part() required String paymentStatus,
    @Part() required String orderStatus,
    @Part() required int rating,
    @Part() required String feedBack,
    @Part() required File orderImages, required String description,
  });

  @PATCH('order/666c3590062b6a47b26426a3')
  Future<updateOrderResponse> updateOrderState(
      @Body() OrderStatusResponse orderStatusResponse,
      );

}
