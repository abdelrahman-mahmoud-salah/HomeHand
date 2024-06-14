import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/helper/spacing.dart';

class DescriptonForWorker extends StatelessWidget {
  DescriptonForWorker({
    super.key, required this.description,
  });

  final String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Description",
          style: TextStyle(
              color: const Color(0xff0B92F0),
              fontWeight: FontWeight.bold,
              fontSize: 16.sp),
        ),
        verticalSpace(8),
        Text(
          description,
          style: TextStyle(
              color: const Color(0xffD9D9D9),
              fontWeight: FontWeight.bold,
              fontSize: 16.sp),
        ),
      ],
    );
  }
}
