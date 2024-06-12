import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/animation/animation_todo.dart';
import 'app_form_register.dart';

class ShapeRegister extends StatelessWidget {
  const ShapeRegister({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomFadeInDown(
      duration: 1000,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 31.w, vertical: 60.h),
        height: 785.h,
        width: double.infinity,
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(23)),
            gradient: LinearGradient(
                colors: [
                  Color.fromARGB(75, 9, 116, 192),
                  Color.fromARGB(53, 13, 172, 240),
                ],
                begin: Alignment.bottomRight,
                end: Alignment.topLeft,
                stops: [0, 50])),
        child: const AppFormRegister(),
      ),
    );
  }
}
