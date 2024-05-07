import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:homehand/core/theming/colors.dart';



class StateItem extends StatelessWidget {
  String value;
  String label;
  StateItem({super.key,required this.value,required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          value,
          style:  TextStyle(
              color: ColorsManager.darkBlue,
              fontSize: 20.sp,
              fontWeight: FontWeight.bold),
        ),
        Text(
          label,
          style:  TextStyle(
              color: ColorsManager.mainBlue,
              fontSize: 15.sp,
              fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
