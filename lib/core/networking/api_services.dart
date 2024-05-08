import 'package:dio/dio.dart';
import 'package:homehand/core/networking/api_constance.dart';
import 'package:homehand/featuers/Auth/featuers/login/data/model/login_repo_boody.dart';
import 'package:homehand/featuers/Auth/featuers/login/data/model/login_request_boody.dart';
import 'package:retrofit/http.dart';

part 'api_services.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST(ApiConstants.login)
  Future<LoginResponse> login(
    @Body() LoginRequestBody loginRequestBody,
  );
}
