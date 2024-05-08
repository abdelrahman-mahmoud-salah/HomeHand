import 'package:homehand/core/networking/api_error_handeler.dart';
import 'package:homehand/core/networking/api_result.dart';
import 'package:homehand/core/networking/api_services.dart';
import 'package:homehand/featuers/Auth/featuers/login/data/model/login_repo_boody.dart';
import 'package:homehand/featuers/Auth/featuers/login/data/model/login_request_boody.dart';

class LoginRepo {
  final ApiService _apiService;

  LoginRepo(this._apiService);

  Future<ApiResult<LoginResponse>> login(
      LoginRequestBody loginRequestBody) async {
    try {
      final response = await _apiService.login(loginRequestBody);
      return ApiResult.success(response);
    } catch (errro) {
      return ApiResult.failure(ErrorHandler.handle(errro));
    }
  }
}
