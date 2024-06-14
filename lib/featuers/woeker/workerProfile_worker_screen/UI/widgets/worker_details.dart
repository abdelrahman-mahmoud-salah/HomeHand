import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:homehand/core/helper/spacing.dart';
import 'package:homehand/core/theming/colors.dart';
import 'package:homehand/core/theming/styels.dart';
import 'package:homehand/featuers/Auth/featuers/login/data/model/login_repo_boody.dart';

class WorkerDetails extends StatelessWidget {
   WorkerDetails({super.key, required this.data});
  final LoginResponse data;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Row(
            children: [
              Icon(Icons.check_box, color: ColorsManager.darkBlue, size: 25.sp),
              horizentalSpace(5),
              Column(
                children: [
                  Text(
                    'Job Completed',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                      fontSize: 15.sp,
                    ),
                  ),
                  Text(
                    '105',
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 15.sp,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              horizentalSpace(90),
              Icon(Icons.account_circle,
                  color: ColorsManager.darkBlue, size: 25.sp),
              horizentalSpace(5),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Working Since',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                      fontSize: 15.sp,
                    ),
                  ),
                  const Text(
                    '2022 Jun',
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
          verticalSpace(5),
          Row(
            children: [
              Icon(Icons.verified, color: ColorsManager.darkBlue, size: 25),
              SizedBox(width: 5),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'NID Verified',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                        fontSize: 15.sp),
                  ),
                  Text(
                    '2341*********',
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              horizentalSpace(90),
              Icon(Icons.timelapse, color: ColorsManager.darkBlue, size: 25),
              SizedBox(width: 5),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'time response',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                      fontSize: 15.sp,
                    ),
                  ),
                  Text(
                    '1 Hr',
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
