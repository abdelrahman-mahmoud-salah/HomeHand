import '../../../../../../core/networking/api_error_handeler.dart';
import '../../../../../../core/networking/api_result.dart';
import '../../../../../../core/networking/api_services.dart';
import '../model/login_repo_boody.dart';
import '../model/login_request_boody.dart';

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
