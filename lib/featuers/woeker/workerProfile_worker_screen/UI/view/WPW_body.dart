// ignore: file_names
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:homehand/core/helper/spacing.dart';
import 'package:homehand/core/theming/colors.dart';
import 'package:homehand/featuers/Auth/featuers/login/data/model/login_repo_boody.dart';

import 'package:homehand/featuers/woeker/workerProfile_worker_screen/UI/widgets/tab_bar.dart';
import 'package:homehand/featuers/woeker/workerProfile_worker_screen/UI/widgets/worker_details.dart';

class WPWBody extends StatelessWidget {
  WPWBody({super.key, required this.data});
  final LoginResponse data;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 260.h,
          margin: EdgeInsets.symmetric(vertical: 5.h, horizontal: 10.w),
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 5.h),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.7),
                spreadRadius: 1,
                blurRadius: 1,
                offset: const Offset(0, 3),
              ),
            ],
            color: Colors.white,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(Icons.star, color: Colors.yellow, size: 20),
                  Text(
                    "4.4",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Color(0xff053B62)),
                  ),
                ],
              ),
              Row(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: 75.w,
                        height: 75.h,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                          border: Border.all(
                              color: ColorsManager.mainBlue, width: 2.w),
                        ),
                        child: Container(
                          width: 60.w,
                          height: 60.h,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey[100],
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(80),
                            child: Image.network(
                              "${data.profile}",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '${data.firstName} ${data.secondName}',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.blue,
                              fontSize: 25.sp),
                        ),
                        Text(
                          '${data.address}',
                          style:
                              TextStyle(color: Colors.black87, fontSize: 18.sp),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              verticalSpace(5),
              const Divider(color: Colors.black26, thickness: 1),
              verticalSpace(5),
              WorkerDetails(
                data: data,
              ),
              verticalSpace(20),
            ],
          ),
        ),
        const MyTabBar(),
      ],
    );
  }
}
