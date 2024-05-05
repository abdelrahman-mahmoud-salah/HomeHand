import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:homehand/core/animation/animation_todo.dart';
import 'package:homehand/core/helper/spacing.dart';
import 'package:homehand/core/theming/styels.dart';
import 'package:homehand/core/widget/button_app.dart';
import 'package:homehand/featuers/Auth/featuers/register/UI/widget/information_customer_register.dart';

class AppFormRegister extends StatelessWidget {
  const AppFormRegister({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 66.h),
        child: CustomFadeInLeft(
          duration: 1010,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Register',
                style: TextStyles.font16WhiteSemiBold.copyWith(
                  fontSize: 28,
                  shadows: <Shadow>[
                    Shadow(
                      offset: Offset(0, 4.w),
                      blurRadius: 4,
                      color: const Color.fromARGB(65, 0, 0, 0),
                    ),
                  ],
                ),
              ),
              verticalSpace(40),
              ButtonApp(
                side: BorderSide(color: Colors.white, width: 2.w),
                height: 5.h,
                textutton: 'sign up with Google',
                icon: 'assets/images/google.png',
                backgroundColor: const MaterialStatePropertyAll(
                  Color.fromARGB(107, 11, 145, 240),
                ),
              ),
              verticalSpace(10),
              const Divider(
                color: Colors.white,
                thickness: .7,
              ),
              InformationCustomerToRgister(),
            ],
          ),
        ),
      ),
    );
  }
}
