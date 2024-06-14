import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomListTile extends StatelessWidget {
  final IconData iconData;
  final String name;
  final VoidCallback onTapFunction;

  const CustomListTile({
    Key? key,
    required this.iconData,
    required this.name,
    required this.onTapFunction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTapFunction,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 5.0.h, horizontal: 20.w),
        child: ListTile(
          leading: Icon(
            iconData,
            color: const Color(0xff001A72),
            size: 25.sp,
          ),
          title: Text(
            name,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 20.sp,
            ),
          ),
          trailing: const Icon(
            Icons.arrow_forward_ios,
            color: Color(0xff001A72),
            size: 25,
          ),
        ),
      ),
    );
  }
}
