import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:homehand/core/helper/spacing.dart';
import 'package:homehand/core/theming/styels.dart';
import 'package:homehand/featuers/Auth/featuers/login/UI/widget/button_login_app.dart';
import 'package:homehand/featuers/Auth/featuers/login/UI/widget/curve_appbar.dart';
import 'package:homehand/featuers/Auth/featuers/login/UI/widget/email_password_login_app.dart';
import 'package:homehand/featuers/Auth/featuers/login/UI/widget/login_bloc_listener.dart';
import 'package:homehand/featuers/Auth/featuers/login/UI/widget/login_with_face_id.dart';
import 'package:homehand/featuers/Auth/featuers/login/UI/widget/or_divider.dart';
import 'package:homehand/featuers/Auth/featuers/login/UI/widget/text_have_accoun.dart';

class LoginBoody extends StatelessWidget {
  const LoginBoody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CurveAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Login",
                  style:
                      TextStyles.font13DarkBlueMedium.copyWith(fontSize: 30.sp),
                ),
                verticalSpace(20),
                const LoginWithFace(),
                verticalSpace(20),
                const OrDivider(),
                verticalSpace(20),
                const EmailandPasswordLogin(),
                verticalSpace(25),
                const ButtonLoginApp(),
                verticalSpace(20),
                const TextHaveAccount(),
                verticalSpace(30),
             const   LoginBlocListener()
              ],
            ),
          )
        ],
      ),
    );
  }
}
