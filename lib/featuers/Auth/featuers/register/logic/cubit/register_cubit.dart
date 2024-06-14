import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../../core/helper/image_picker.dart';
import '../../data/repos/register_data_repo.dart';
import 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit(this._registerRepo) : super(const RegisterState.initial());
  RegisterRepo _registerRepo;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController firstNameController = TextEditingController();
  TextEditingController secoundNameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController genderController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  String userRole = 'client';
  String specialization = 'pluming';
  File? image;
  File? idImage;
  Future<void> picKFromGallery() async {
    emit(RegisterState.initial());
    image = await PickImage.galleryPick();
    log(image!.path);
    emit(UploadImage());
  }

  final formKey = GlobalKey<FormState>();

  Future<void> emitRegister() async {
    emit(RegisterState.loading());
    if (userRole == 'client') {
      final repo = await _registerRepo.signUp(
        firstName: firstNameController.text,
        secondName: secoundNameController.text,
        email: emailController.text,
        password: passwordController.text,
        address: addressController.text,
        phone: phoneController.text,
        gender: genderController.text,
        userType: userRole,
        profilePic: image!,
      );
      repo.when(
        success: (data) {
          emit(RegisterState.success());
        },
        failure: (errorHandler) {
          log(errorHandler.apiErrorModel.message!);
          emit(RegisterState.error(error: errorHandler.apiErrorModel.message!));
        },
      );
    } else {
      final repo = await _registerRepo.signUpWorker(
        firstName: firstNameController.text,
        secondName: secoundNameController.text,
        email: emailController.text,
        password: passwordController.text,
        address: addressController.text,
        phone: phoneController.text,
        gender: genderController.text,
        userType: userRole,
        specialization: specialization,
        profilePic: image!,
        idImage: idImage!,
      );
      repo.when(
        success: (data) {
          emit(RegisterState.success());
        },
        failure: (errorHandler) {
          emit(RegisterState.error(error: errorHandler.toString()));
        },
      );
    }
  }
}
