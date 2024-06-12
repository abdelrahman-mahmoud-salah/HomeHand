import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../../../core/helper/image_picker.dart';
import '../../../../../../core/helper/regex.dart';
import '../../../../../../core/helper/spacing.dart';
import '../../../../../../core/theming/colors.dart';
import '../../../../../../core/theming/styels.dart';
import '../../../../../../core/widget/app_text_form_field.dart';
import '../../../../../../core/widget/button_app.dart';
import '../../../../../../core/widget/drop_down_icon.dart';
import 'additonal_information_worker.dart';
import 'choose_kind_customer.dart';
import 'register_bloc_listener.dart';
import 'password_validate.dart';
import 'register_button.dart';
import '../../logic/cubit/register_cubit.dart';

class InformationCustomerToRgister extends StatefulWidget {
  InformationCustomerToRgister({
    super.key,
  });

  @override
  State<InformationCustomerToRgister> createState() =>
      _InformationCustomerToRgisterState();
}

class _InformationCustomerToRgisterState
    extends State<InformationCustomerToRgister> {
  bool hasLowercase = false;
  bool hasUppercase = false;
  bool hasSpecialCharacters = false;
  bool hasNumber = false;
  bool hasMinLength = false;

  late TextEditingController passwordController;
  @override
  void initState() {
    super.initState();
    passwordController = context.read<RegisterCubit>().passwordController;
    setupPasswordControllerListener();
  }

  void setupPasswordControllerListener() {
    passwordController.addListener(() {
      setState(() {
        hasLowercase = AppRegex.hasLowerCase(passwordController.text);
        hasUppercase = AppRegex.hasUpperCase(passwordController.text);
        hasSpecialCharacters =
            AppRegex.hasSpecialCharacter(passwordController.text);
        hasNumber = AppRegex.hasNumber(passwordController.text);
        hasMinLength = AppRegex.hasMinLength(passwordController.text);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<RegisterCubit>();
    return Form(
        key: cubit.formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            verticalSpace(20),
            Row(
              children: [
                Expanded(
                    flex: 1,
                    child: AppTextFormField(
                      controller: cubit.firstNameController,
                      cursorColor: Colors.white,
                      inputTextStyle: const TextStyle(
                          color: Colors.white,
                          decoration: TextDecoration.none,
                          decorationThickness: 0),
                      enabledBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      contentPadding: EdgeInsets.only(bottom: 1.h, left: 5.w),
                      focusedBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)),
                      backgroundColor: Colors.transparent,
                      hintText: 'First Name',
                      hintStyle: const TextStyle(
                          fontSize: 15,
                          color: ColorsManager.white,
                          decoration: TextDecoration.none,
                          decorationThickness: 0),
                      validator: (value) {},
                    )),
                horizentalSpace(10),
                Expanded(
                    flex: 1,
                    child: AppTextFormField(
                      controller: cubit.secoundNameController,
                      cursorColor: Colors.white,
                      inputTextStyle: const TextStyle(
                          color: Colors.white,
                          decoration: TextDecoration.none,
                          decorationThickness: 0),
                      enabledBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(color: ColorsManager.white)),
                      contentPadding: EdgeInsets.only(bottom: 1.h, left: 5.w),
                      focusedBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(color: ColorsManager.white)),
                      backgroundColor: Colors.transparent,
                      hintText: 'Last Name',
                      hintStyle: const TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          decoration: TextDecoration.none,
                          decorationThickness: 0),
                      validator: (value) {},
                    )),
              ],
            ),
            AppTextFormField(
              controller: cubit.emailController,
              prefix: Padding(
                padding: EdgeInsets.only(top: 25.h),
                child: const Icon(
                  Icons.email_outlined,
                  color: ColorsManager.white,
                ),
              ),
              cursorColor: Colors.white,
              inputTextStyle: const TextStyle(
                  color: ColorsManager.white,
                  decoration: TextDecoration.none,
                  decorationThickness: 0),
              enabledBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white)),
              contentPadding: EdgeInsets.only(left: 5.w, top: 25.h),
              focusedBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white)),
              backgroundColor: Colors.transparent,
              hintText: 'email',
              hintStyle: const TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                  decoration: TextDecoration.none,
                  decorationThickness: 0),
              validator: (value) {
                if (value == null ||
                    value.isEmpty ||
                    !AppRegex.isEmailValid(value)) {
                  return 'Please enter a valid email';
                }
              },
            ),
            AppTextFormField(
              controller: cubit.passwordController,
              isObscureText: true,
              prefix: Padding(
                padding: EdgeInsets.only(top: 25.h),
                child: const Icon(
                  Icons.lock_outline_rounded,
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
              ),
              cursorColor: Colors.white,
              inputTextStyle: const TextStyle(
                  color: Colors.white,
                  decoration: TextDecoration.none,
                  decorationThickness: 0),
              enabledBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white)),
              contentPadding: EdgeInsets.only(left: 5.w, top: 25.h),
              focusedBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white)),
              backgroundColor: Colors.transparent,
              hintText: 'password',
              hintStyle: const TextStyle(
                  fontSize: 15,
                  textBaseline: TextBaseline.alphabetic,
                  color: Colors.white,
                  decoration: TextDecoration.none,
                  decorationThickness: 0),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a valid password';
                }
              },
            ),
            verticalSpace(24),
            PasswordValidations(
              hasLowerCase: hasLowercase,
              hasUpperCase: hasUppercase,
              hasSpecialCharacters: hasSpecialCharacters,
              hasNumber: hasNumber,
              hasMinLength: hasMinLength,
            ),
            AppTextFormField(
              controller: cubit.addressController,
              prefix: Padding(
                padding: EdgeInsets.only(top: 25.h),
                child: const Icon(
                  Icons.add_location_alt_sharp,
                  color: ColorsManager.white,
                ),
              ),
              cursorColor: Colors.white,
              inputTextStyle: const TextStyle(
                  color: Colors.white,
                  decoration: TextDecoration.none,
                  decorationThickness: 0),
              enabledBorder:
                  // ignore: lines_longer_than_80_chars
                  const UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.white,
                ),
              ),
              contentPadding: EdgeInsets.only(left: 5.w, top: 25.h),
              focusedBorder:
                  // ignore: lines_longer_than_80_chars
                  const UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white)),
              backgroundColor: Colors.transparent,
              hintText: 'Adderess',
              hintStyle: const TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                  decoration: TextDecoration.none,
                  decorationThickness: 0),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a valid password';
                }
              },
            ),
            AppTextFormField(
              controller: cubit.genderController,
              prefix: Padding(
                padding: EdgeInsets.only(top: 25.h),
                child: const Icon(
                  Icons.face_sharp,
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
              ),
              cursorColor: Colors.white,
              inputTextStyle: const TextStyle(
                  color: Colors.white,
                  decoration: TextDecoration.none,
                  decorationThickness: 0),
              enabledBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white)),
              contentPadding: EdgeInsets.only(left: 5.w, top: 25.h),
              focusedBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white)),
              backgroundColor: Colors.transparent,
              hintText: 'Gender',
              hintStyle: const TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                  decoration: TextDecoration.none,
                  decorationThickness: 0),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a valid password';
                }
              },
            ),
            AppTextFormField(
              keyboardType: TextInputType.phone,
              controller: cubit.phoneController,
              prefix: Padding(
                padding: EdgeInsets.only(top: 25.h),
                child: const Icon(
                  Icons.face_sharp,
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
              ),
              cursorColor: Colors.white,
              inputTextStyle: const TextStyle(
                  color: Colors.white,
                  decoration: TextDecoration.none,
                  decorationThickness: 0),
              enabledBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white)),
              contentPadding: EdgeInsets.only(left: 5.w, top: 25.h),
              focusedBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white)),
              backgroundColor: Colors.transparent,
              hintText: 'Phone',
              hintStyle: const TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                  decoration: TextDecoration.none,
                  decorationThickness: 0),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a valid password';
                }
              },
            ),
            verticalSpace(20),
            ButtonApp(
              onPressed: () async {
                final image = await cubit.picKFromGallery();
                final images = cubit.image;

                debugPrint(images!.path);
              },
              style: TextStyles.font16WhiteMedium
                ..copyWith(fontSize: 1.sp, overflow: TextOverflow.clip),
              widthpading: 20.w,
              color: Colors.white,
              icon: cubit.image != null
                  ? 'assets/images/logo_onboarding_andorid12.png'
                  : 'assets/images/share-2.png',
              heighticon: 20,
              widthicon: 20,
              side: const BorderSide(color: Colors.white, width: 2),
              height: 2.h,
              textutton: 'Upload our personal image',
              backgroundColor:
                  const MaterialStatePropertyAll(ColorsManager.mainBlue),
            ),
            verticalSpace(20),
            ChosseKindCustomer(),
            RegisterButton(),
            verticalSpace(20),
            
          ],
        ));
  }
}
