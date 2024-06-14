import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/helper/spacing.dart';
import '../../../../core/theming/styels.dart';

class PageViewItems extends StatelessWidget {
  const PageViewItems({
    required this.image,
    required this.title,
    required this.subTitle,
    super.key,
  });
  final String image;
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: Column(
        children: [
          verticalSpace(100.h),
          SizedBox(
            height: 372.h,
            width: 372.w,
            child: Image.asset(
              image,
              height: 100,
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Text(
            title,
            style: TextStyles.font24BlueBold.copyWith(fontSize: 30),
          ),
          SizedBox(
            height: 10.h,
          ),
          Text(
            subTitle,
            style: TextStyles.font14GrayRegular.copyWith(
                fontSize: 18, fontWeight: FontWeight.w500, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
