import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:homehand/core/helper/extinstion.dart';
import 'package:homehand/core/theming/colors.dart';
import 'package:homehand/featuers/customer/featuers/settings_screen/UI/view/settings_body.dart';


class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onPressed: () {
            context.pop();
          },
        ),
        title: Text(
          'Settings',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25.sp,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: ColorsManager.mainBlue,
      ),
      backgroundColor: ColorsManager.mainBlue,
      body: const SettingsBody(),
    );
  }
}

