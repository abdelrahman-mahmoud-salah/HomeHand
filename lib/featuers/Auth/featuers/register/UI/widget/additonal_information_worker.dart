import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/helper/image_picker.dart';
import '../../../../../../core/helper/spacing.dart';
import '../../../../../../core/theming/colors.dart';
import '../../../../../../core/theming/styels.dart';
import '../../../../../../core/widget/button_app.dart';
import '../../../../../../core/widget/drop_down_icon.dart';
import '../../logic/cubit/register_cubit.dart';

class AdditionalinformationForWorker extends StatefulWidget {
  AdditionalinformationForWorker({super.key});

  @override
  State<AdditionalinformationForWorker> createState() =>
      _AdditionalinformationForWorkerState();
}

class _AdditionalinformationForWorkerState
    extends State<AdditionalinformationForWorker> {
  String? selectedValue = null;

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<RegisterCubit>();
    if (cubit.userRole == 'client') {
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
              onChanged: (String? newValue) {
                cubit.specialization = newValue!;
              },
              items: dropdownItems),
          verticalSpace(30),
          ButtonApp(
            onPressed: () async {
              final Image = await PickImage.galleryPick();
              cubit.idImage = File(Image!.path);
            },
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
