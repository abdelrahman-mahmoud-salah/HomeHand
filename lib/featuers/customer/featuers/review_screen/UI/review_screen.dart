import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:homehand/core/helper/extinstion.dart';
import 'package:homehand/core/routes/Routes_App.dart';
import 'package:homehand/core/theming/colors.dart';

import 'view/review_body.dart';

class ReviewScreen extends StatefulWidget {
  const ReviewScreen({Key? key}) : super(key: key);

  @override
  _ReviewScreenState createState() => _ReviewScreenState();
}

class _ReviewScreenState extends State<ReviewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Color(0xff014F86)),
          onPressed: () {
            context.pop();
          },
        ),
        title: Text(
          'Review',
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.blue, fontSize: 24.sp),
        ),
        centerTitle: true,
        elevation: 0,
        toolbarHeight: 100.h,
      ),
      body: const ReviewBody(),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 40.h),
        // Adjusted vertical padding
        child: ElevatedButton(
          onPressed: () {
            context.pushNamed(RoutesApp.homeCustomer);
          },
          style: ElevatedButton.styleFrom(
            fixedSize: Size(340.w, 75.h),
            foregroundColor: Colors.white,
            backgroundColor: ColorsManager.mainBlue,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(45)),
          ),
          child: Text(
            "Submit",
            style: TextStyle(fontSize: 25.sp, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
