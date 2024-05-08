import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:homehand/core/helper/extinstion.dart';
import 'package:homehand/core/helper/spacing.dart';
import 'package:homehand/core/routes/Routes_App.dart';
import 'package:homehand/core/theming/colors.dart';

import '../widgets/details_item.dart';

class ServiceDetailsBody extends StatefulWidget {
  const ServiceDetailsBody({super.key});

  @override
  State<ServiceDetailsBody> createState() => _ServiceDetailsBodyState();
}

class _ServiceDetailsBodyState extends State<ServiceDetailsBody> {
  bool isCash = true;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40).w,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            verticalSpace(10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'About this service',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.sp,
                    color: Colors.blue,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 10).h,
                  width: double.infinity,
                  alignment: Alignment.center,
                  child: const Text(
                    'Book your professional handyman service for any of your home needs. This service is charged at \$60 per hour, plus any parts if needed.',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Color(0xff9D9D9D),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            verticalSpace(10),
            const CustomColumn(
              text: 'Service Description',
              textFieldHeight: 120,
            ),
            const CustomColumn(
              text: 'Date',
              textFieldHeight: 80,
            ),
            const CustomColumn(
              text: 'Address',
              textFieldHeight: 50,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Payment',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                    fontSize: 16.sp,
                  ),
                ),
                verticalSpace(10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          isCash = true;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(110.w, 35.h),
                        foregroundColor: Colors.white,
                        backgroundColor: isCash
                            ? ColorsManager.darkBlue
                            : ColorsManager.lightGray,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        elevation: 5,
                      ),
                      child: Text(
                        'Cash',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16.sp),
                      ),
                    ),
                    horizentalSpace(20),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          isCash = false;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(110.w, 35.h),
                        foregroundColor: Colors.white,
                        backgroundColor: isCash
                            ? ColorsManager.lightGray
                            : ColorsManager.darkBlue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        elevation: 8,
                      ),
                      child: Text(
                        'Credit',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16.sp),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            verticalSpace(30),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  context.pushNamed(RoutesApp.reviewScreen);
                },
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(340.w, 75.h),
                  foregroundColor: Colors.white,
                  backgroundColor: ColorsManager.mainBlue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(45),
                  ),
                ),
                child: Text(
                  "Submit",
                  style:
                      TextStyle(fontSize: 25.sp, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
