import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:homehand/core/helper/spacing.dart';
import 'package:homehand/core/theming/colors.dart';
import 'package:homehand/featuers/customer/featuers/review_screen/UI/widgets/stars_item.dart';




class ReviewBody extends StatelessWidget {
  const ReviewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            children: [
              Container(
                width: 150.w,
                height: 150.h,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: ColorsManager.mainBlue,
                    width: 3.w,
                  ),
                ),
                child: Container(
                  width: 125.w,
                  height: 125.h,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey[100],
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.7),
                        spreadRadius: 1,
                        blurRadius: 1,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(80),
                    child: Image.network(
                      'https://cdn-icons-png.flaticon.com/512/147/147129.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ],
          ),
          verticalSpace(20),
          Text(
            'Ramy Said',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.blue,
                fontSize: 25.sp),
          ),
          Text(
            "Let's Rate your service provider",
            style: TextStyle(color: Colors.grey[500]),
          ),
          verticalSpace(10),
          StarsItem(),
          verticalSpace(20),
          Container(
            width: double.infinity,
            // Adjusted width
            height: 130.h,
            // Increase height for TextField
            padding: const EdgeInsets.all(18).w,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.grey), // Grey border
              borderRadius: BorderRadius.circular(10), // Corner radius
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 1,
                  blurRadius: 2,
                  offset: const Offset(0, 2), // changes position of shadow
                ),
              ],
            ),
            child: const TextField(
              maxLines: 5,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Tell people about your service provider',
                hintStyle: TextStyle(color: Colors.grey),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
