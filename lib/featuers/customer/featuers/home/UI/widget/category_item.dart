import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:homehand/core/helper/spacing.dart';

class CategoryItem extends StatelessWidget {
  CategoryItem(
      {required this.iconData,
      required this.label,
      required this.color,
      this.iconColor,
      this.onTap,
      this.colorText});

  final IconData iconData;
  final String label;
  final Color? color;
  Color? colorText;
  final Color? iconColor;
  void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap ,
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 5.0.h,
        ),
        child: Container(
          width: 90.w,
          height: 80.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: color,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.35),
                blurRadius: 1,
                offset: const Offset(0, 5),
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                iconData,
                size: 40,
                color: iconColor ?? Colors.black,
              ),
              verticalSpace(12),
              Text(
                label,
                style: TextStyle(
                  color: colorText ?? const Color(0xEA818181),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
