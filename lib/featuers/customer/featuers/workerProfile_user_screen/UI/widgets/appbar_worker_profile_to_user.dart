import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:homehand/core/helper/extinstion.dart';
import 'package:homehand/core/theming/colors.dart';

PreferredSizeWidget AppBarWorkerProfileForUser(BuildContext context){
  return AppBar(
        backgroundColor: const Color(0xffD9D9D9) ,
        toolbarHeight: 100.h,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            context.pop();
          },
          icon:const Icon(Icons.arrow_back_ios_rounded,
              size: 40, color: ColorsManager.mainBlue),
        ),
      );
}