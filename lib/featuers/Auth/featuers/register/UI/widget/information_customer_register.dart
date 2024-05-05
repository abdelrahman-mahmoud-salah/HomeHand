import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:homehand/core/helper/spacing.dart';
import 'package:homehand/core/theming/colors.dart';
import 'package:homehand/core/theming/styels.dart';
import 'package:homehand/core/widget/app_text_form_field.dart';
import 'package:homehand/core/widget/button_app.dart';
import 'package:homehand/core/widget/drop_down_icon.dart';
import 'package:homehand/featuers/Auth/featuers/register/UI/widget/choose_kind_customer.dart';

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
  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        verticalSpace(20),
        Row(
          children: [
            Expanded(
                flex: 1,
                child: AppTextFormField(
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
          validator: (value) {},
        ),
        AppTextFormField(
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
          validator: (value) {},
        ),
        AppTextFormField(
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
          validator: (value) {},
        ),
        AppTextFormField(
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
          validator: (value) {},
        ),
        verticalSpace(20),
        ButtonApp(
          style: TextStyles.font16WhiteMedium
            ..copyWith(fontSize: 1.sp, overflow: TextOverflow.clip),
          widthpading: 20.w,
          color: Colors.white,
          icon: 'assets/images/share-2.png',
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
        ButtonApp(
          onPressed: () {},
          widthpading: 20,
          color: Colors.white,
          icon: '',
          heighticon: 20,
          widthicon: 20,
          side: BorderSide(color: Colors.white, width: 2.w),
          height: 2,
          textutton: 'Create an account',
          backgroundColor:
              const MaterialStatePropertyAll(ColorsManager.mainBlue),
        ),
        verticalSpace(20),
      ],
    ));
  }
}
