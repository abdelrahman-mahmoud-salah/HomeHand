import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/helper/spacing.dart';
import '../../../../../../core/theming/colors.dart';
import 'profile_image.dart';

class IdWorkerInfo extends StatelessWidget {
  const IdWorkerInfo({
    super.key, required this.image, required this.experience,
    
  });

final String coin = "LE";
final String image;
final String experience;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         ProfileImage(image: image,),
        verticalSpace(20),
        Text(
          'Mitchal Marsh',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: ColorsManager.darkBlue,
              fontSize: 20.sp),
        ),
        Text(
          '${experience} years experience',
          style: TextStyle(
              color: ColorsManager.mainBlue,
              fontSize: 15.sp,
              fontWeight: FontWeight.bold),
        ),
        Row(
          children: List.generate(
            5,
            (index) => Icon(
              Icons.star,
              color: index < 4 ? Colors.yellow : Colors.grey,
              size: 17,
            ),
          ),
        ),
        Text(
          '$coin 30.00/h',
          style: TextStyle(
              color: Colors.red, fontSize: 12.sp, fontWeight: FontWeight.bold,),
        ),
      ],
    );
  }
}
