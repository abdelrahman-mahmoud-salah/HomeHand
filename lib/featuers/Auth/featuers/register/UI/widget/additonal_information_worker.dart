import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:homehand/core/helper/spacing.dart';
import 'package:homehand/core/theming/colors.dart';
import 'package:homehand/core/theming/styels.dart';
import 'package:homehand/core/widget/button_app.dart';
import 'package:homehand/core/widget/drop_down_icon.dart';

class AdditionalinformationForWorker extends StatefulWidget {
  AdditionalinformationForWorker({super.key, required this.Customer});

  final String Customer;

  @override
  State<AdditionalinformationForWorker> createState() =>
      _AdditionalinformationForWorkerState();
}

class _AdditionalinformationForWorkerState
    extends State<AdditionalinformationForWorker> {
  String? selectedValue = null;

  @override
  Widget build(BuildContext context) {
    if (widget.Customer == 'user') {
      return verticalSpace(20);
    } else {
      return Column(
        children: [
          DropdownButtonFormField(
              focusColor: Colors.white,
              autovalidateMode: AutovalidateMode.always,
              borderRadius: BorderRadius.circular(16),
              enableFeedback: true,
              isDense: true,
              iconSize: 35.3.sp,
              iconEnabledColor: Colors.white,
              hint: Text(
                'Select your job',
                style: TextStyles.font16WhiteSemiBold.copyWith(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    fontSize: 14.sp),
              ),
              style: TextStyles.font16WhiteSemiBold
                  .copyWith(color: ColorsManager.mainBlue),
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(horizontal: 16.w),
                focusedBorder: UnderlineInputBorder(
                  borderSide:
                      BorderSide(color: ColorsManager.white, width: 3.w),
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide:
                      BorderSide(color: ColorsManager.white, width: 3.w),
                ),
              ),
              dropdownColor: ColorsManager.white,
              value: selectedValue,
              onChanged: (String? newValue) {},
              items: dropdownItems),
          verticalSpace(30),
          ButtonApp(
            widthpading: 10.sp,
            color: Colors.white,
            icon: 'assets/images/share-2.png',
            heighticon: 20,
            widthicon: 20,
            side: BorderSide(color: Colors.white, width: 2.w),
            height: 2,
            textutton: 'Upload your personal ID',
            backgroundColor:
                const MaterialStatePropertyAll(ColorsManager.mainBlue),
          ),
          verticalSpace(20),
        ],
      );
    }
  }
}
