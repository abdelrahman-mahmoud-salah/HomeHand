import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/helper/extinstion.dart';
import '../../../../../../core/routes/Routes_App.dart';
import '../../../../../../core/theming/colors.dart';

class ButtonSumbit extends StatelessWidget {
  const ButtonSumbit({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
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
          style: TextStyle(fontSize: 25.sp, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
