import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:homehand/featuers/customer/featuers/workerwhodoservice/data/model/Info_about_who_work_service_model.dart';
import '../../../../../../core/helper/spacing.dart';
import '../../../../../../core/theming/colors.dart';
import 'profile_image.dart';

class IdWorkerInfo extends StatelessWidget {
  const IdWorkerInfo({
    super.key, required this.data,
    
  });

final String coin = "LE";
  final GetAllWorkerinfoModel data;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         ProfileImage(image: data.profileImage,),
        verticalSpace(20),
        Text(
          '${data.worker!.firstName} ${data.worker!.secondName}',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: ColorsManager.darkBlue,
              fontSize: 20.sp),
        ),
        Text(
          '${data.experience} years experience',
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
              color: index < (data.rating??4) ? Colors.yellow : Colors.grey,
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
