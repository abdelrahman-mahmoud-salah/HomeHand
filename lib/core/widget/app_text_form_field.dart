import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../theming/colors.dart';
import '../theming/styels.dart';

class AppTextFormField extends StatelessWidget {
   AppTextFormField({
    super.key,
    this.contentPadding,
    this.focusedBorder,
    this.enabledBorder,
    this.inputTextStyle,
    this.hintStyle,
    required this.hintText,
    this.isObscureText,
    this.suffixIcon,
    this.backgroundColor,
    this.controller,
    required this.validator,
    this.prefix,
    this.cursorColor,
    this.keyboardType
  });
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final TextStyle? inputTextStyle;
  final TextStyle? hintStyle;
  final String hintText;
  final bool? isObscureText;
  final Widget? suffixIcon;
  final Color? backgroundColor;
  final TextEditingController? controller;
  final Widget? prefix;
  final String? Function(String?)? validator;
  final Color? cursorColor;
  TextInputType? keyboardType;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType:keyboardType,
      cursorColor: cursorColor,
      cursorErrorColor: Colors.red,
      controller: controller,
      decoration: InputDecoration(
        prefixIcon: prefix,
        prefixIconColor: Color.fromARGB(255, 174, 174, 174),
        isDense: true,
        contentPadding: contentPadding ??
            EdgeInsets.symmetric(horizontal: 20.w, vertical: 18.h),
        focusedBorder: focusedBorder ??
            UnderlineInputBorder(
              borderSide: const BorderSide(
                color: ColorsManager.mainBlue,
                width: 1,
              ),
            ),
        enabledBorder: enabledBorder ??
            UnderlineInputBorder(
              borderSide: const BorderSide(
                color: Color.fromARGB(255, 174, 174, 174),
                width: 1,
              ),
            ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.red,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(16.0),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.red,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(16.0),
        ),
        hintStyle: hintStyle ??
            TextStyles.font14LightGrayRegular
                .copyWith(color: const Color.fromARGB(255, 135, 135, 135)),
        hintText: hintText,
        suffixIcon: suffixIcon,
        fillColor: backgroundColor ?? const Color.fromARGB(255, 255, 255, 255),
        filled: true,
      ),
      obscureText: isObscureText ?? false,
      style: inputTextStyle,
      validator: validator,
    );
  }
}
