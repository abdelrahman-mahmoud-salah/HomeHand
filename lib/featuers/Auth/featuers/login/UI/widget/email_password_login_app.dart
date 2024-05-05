import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:homehand/core/animation/animation_todo.dart';
import 'package:homehand/core/helper/spacing.dart';
import 'package:homehand/core/theming/colors.dart';
import 'package:homehand/core/theming/styels.dart';
import 'package:homehand/core/widget/app_text_form_field.dart';

class EmailandPasswordLogin extends StatefulWidget {
  const EmailandPasswordLogin({super.key});

  @override
  State<EmailandPasswordLogin> createState() => _EmailandPasswordLoginState();
}

class _EmailandPasswordLoginState extends State<EmailandPasswordLogin> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Form(
          child: Column(
        children: [
          CustomFadeInLeft(
            duration: 900,
            child: AppTextFormField(
              prefix: const Icon(Icons.email_outlined),
              hintText: "email",
              validator: (p0) => p0,
              enabledBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: ColorsManager.lightGray)),
            ),
          ),
          verticalSpace(20),
          CustomFadeInLeft(
            duration: 905,
            child: AppTextFormField(
                prefix: const Icon(Icons.lock_outline),
                hintText: "password",
                validator: (p0) => p0,
                enabledBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: ColorsManager.lightGray))),
          ),
        ],
      )),
    );
  }
}
