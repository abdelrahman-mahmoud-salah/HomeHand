import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/animation/animation_todo.dart';
import '../../../../../../core/theming/colors.dart';
import '../../../../../../core/theming/styels.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: CustomFadeInRight(
        duration: 900,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(right: 10.w),
              height: 2.h,
              width: 160.w,
              color: ColorsManager.lightGray,
            ),
            Text(
              "or",
              style: TextStyles.font13DarkBlueMedium.copyWith(fontSize: 20.sp),
            ),
            Container(
              margin: EdgeInsets.only(
                left: 8.w,
              ),
              height: 2.h,
              width: 160.w,
              color: ColorsManager.lightGray,
            ),
          ],
        ),
      ),
    );
  }
}
