import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:homehand/featuers/Auth/featuers/login/data/model/login_repo_boody.dart';
import '../../../../../core/helper/extinstion.dart';
import '../../../../../core/theming/colors.dart';
import 'view/settings_body.dart';


class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key, required this.data});
  final LoginResponse data;
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
      body:  SettingsBody(data: data,),
    );
  }
}

