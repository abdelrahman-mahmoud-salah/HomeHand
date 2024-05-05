import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:homehand/core/animation/animation_todo.dart';
import 'package:homehand/core/theming/colors.dart';
import 'package:homehand/core/theming/styels.dart';
import 'package:homehand/core/widget/curve_onboarding.dart';

class CurveAppBar extends StatelessWidget {
  const CurveAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CurveOnBoarding(),
        Positioned(
          right: 0,
          top: -5,
          height: 281.h,
          width: 190.h,
          child: CustomFadeInUp(
            duration: 900,
            child: Image.asset(
              "assets/images/stars_login.png",
              color: ColorsManager.mainBlue,
            ),
          ),
        ),
        Positioned(
          top: 120.h,
          left: 30.w,
          child: CustomFadeInLeft(
            duration: 900,
            child: Text(
              "Welcome \n Back !",
              style: TextStyles.font16WhiteMedium.copyWith(fontSize: 30),
            ),
          ),
        )
      ],
    );
  }
}
