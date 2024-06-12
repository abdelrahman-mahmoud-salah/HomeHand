import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../theming/colors.dart';

class EmptyScreen extends StatelessWidget {
  const EmptyScreen({super.key, this.title = 'No Data'});

  final String? title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
      child: Opacity(
        opacity: 0.6,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/empty_screen.png'),
            Text(
              title!,
              style: TextStyle(
                  color: ColorsManager.darkBlue,
                  fontSize: 40,
                  fontWeight: FontWeight.w700),
            ),
          ],
        ),
      ),
    );
  }
}
