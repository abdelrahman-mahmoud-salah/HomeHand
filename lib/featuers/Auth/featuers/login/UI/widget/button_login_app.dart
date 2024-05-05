import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:homehand/core/animation/animation_todo.dart';
import 'package:homehand/core/helper/extinstion.dart';
import 'package:homehand/core/theming/colors.dart';
import 'package:homehand/core/theming/styels.dart';

class ButtonLoginApp extends StatelessWidget {
  const ButtonLoginApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
          fixedSize: MaterialStatePropertyAll(Size(double.infinity, 50.h)),
          shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(23),
            ),
          ),
          backgroundColor:
              const MaterialStatePropertyAll(ColorsManager.mainBlue),
        ),
        onPressed: () {
          // context.pushNamed()
        },
        child: CustomFadeInRight(
          duration: 900,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Login ',
                style: TextStyles.font16WhiteMedium.copyWith(fontSize: 20.sp),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ));
  }
}
