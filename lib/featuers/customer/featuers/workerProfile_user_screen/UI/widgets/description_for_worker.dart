import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:homehand/core/helper/spacing.dart';

class DescriptonForWorker extends StatelessWidget {
   DescriptonForWorker({
    super.key,
  
  });

     String description =
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed non risus. "
      "Suspendisse lectus tortor, dignissim sit amet, adipiscing nec, ultricies sed, dolor. ";

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

