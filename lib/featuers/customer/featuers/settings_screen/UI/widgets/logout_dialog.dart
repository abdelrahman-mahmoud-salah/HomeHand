import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:homehand/core/helper/extinstion.dart';
import 'package:homehand/core/helper/spacing.dart';
import 'package:homehand/core/routes/Routes_App.dart';



class LogoutDialog extends StatelessWidget {
  const LogoutDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        'Logout',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.black87,
          fontWeight: FontWeight.w500,
          fontSize: 16.sp,
        ),
      ),
      backgroundColor: Colors.white,
      surfaceTintColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0), // Adjust the value as needed
      ),
      content: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(
              Radius.circular(20.0)), // Adjust the value as needed
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            verticalSpace(20),
            Text(
              "You'll need to enter your username and password or face ID next time you want to log in.",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black87,
                fontWeight: FontWeight.w400,
                fontSize: 12.sp,
              ),
            ),
            verticalSpace(20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton(
                  onPressed: () => context.pop(),
                  child: Text(
                    'Cancel',
                    style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.w400,
                      fontSize: 16.sp,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    // Add the logout functionality here
                    context.pushNamed(RoutesApp.login);
                  },
                  child: Text(
                    'Logout',
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.w400,
                      fontSize: 16.sp,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
