import 'dart:io';

import '../../../../../../core/networking/api_error_handeler.dart';
import '../../../../../../core/networking/api_result.dart';
import '../../../../../../core/networking/api_services.dart';
import '../models/register_user_repo_boody.dart';

class RegisterRepo {
  RegisterRepo(this._apiService);
  final ApiService _apiService;

  Future<ApiResult<RegisterUserRepo>> signUp(
      {required String firstName,
      required String secondName,
      required String email,
      required String password,
      required String address,
      required String phone,
      required String gender,
      required String userType,
      required File profilePic}) async {
    try {
      final responce = await _apiService.registerUser(
        firstName: firstName,
        email: email,
        password: password,
        profile: profilePic,
        Phone: phone,
        address: address,
        secondName: secondName,
        gender: gender,
        userType: userType,
      );
      return ApiResult.success(responce);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }
  Future<ApiResult<RegisterUserRepo>> signUpWorker(
      {required String firstName,
      required String secondName,
      required String email,
      required String password,
      required String address,
      required String phone,
      required String gender,
      required String userType,
      required String specialization,
      required File profilePic,
      required File idImage,
      }) async {
    try {
      final responce = await _apiService.registerWorker(
        firstName: firstName,
        email: email,
        password: password,
        profileImage: profilePic,
        Phone: phone,
        address: address,
        secondName: secondName,
        gender: gender,
        userType: userType,
        idImage: idImage,
        specialization: specialization,
      );
      return ApiResult.success(responce);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }
}
