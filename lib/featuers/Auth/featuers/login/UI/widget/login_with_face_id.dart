import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/animation/animation_todo.dart';
import '../../../../../../core/helper/spacing.dart';
import '../../../../../../core/theming/colors.dart';
import '../../../../../../core/theming/styels.dart';

class LoginWithFace extends StatelessWidget {
  const LoginWithFace({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomFadeInDown(
      duration: 900,
      child: ElevatedButton(
          style: ButtonStyle(
              fixedSize: MaterialStatePropertyAll(Size(double.infinity, 50.h)),
              shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(23))),
              backgroundColor:
                  const MaterialStatePropertyAll(ColorsManager.mainBlue)),
          onPressed: () {},
          child: Row(
            children: [
              Image.asset(
                "assets/images/Group 6.png",
                width: 28.w,
                height: 28.h,
              ),
              horizentalSpace(50),
              Text(
                "Login with Face ID",
                style: TextStyles.font16WhiteMedium.copyWith(fontSize: 20.sp),
              ),
            ],
          )),
    );
  }
}
