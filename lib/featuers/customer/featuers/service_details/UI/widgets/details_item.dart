import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:homehand/core/theming/colors.dart';

class CustomColumn extends StatelessWidget {
  final String text;
  final double textFieldHeight;
  final TextEditingController controller;

  const CustomColumn({
    Key? key,
    required this.text,
    required this.textFieldHeight,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: ColorsManager.mainBlue,
            fontSize: 16.sp,
          ),
        ),
        SizedBox(height: 10.h),
        Container(
          height: textFieldHeight,
          width: 335.w, // Set width to fill the available space
          padding: EdgeInsets.symmetric(horizontal: 10.w), // Add padding for better appearance
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: Colors.grey), // Use Border.all for border color
          ),
          child: TextFormField(
            controller: controller,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a $text';
              }
            },
            decoration: const InputDecoration(
              border: InputBorder.none, // Remove border from TextField
            ),
          ),
        ),
        SizedBox(height: 20.h),
      ],
    );
  }
}