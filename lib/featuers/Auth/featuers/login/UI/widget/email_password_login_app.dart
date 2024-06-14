import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/animation/animation_todo.dart';
import '../../../../../../core/helper/regex.dart';
import '../../../../../../core/helper/spacing.dart';
import '../../../../../../core/theming/colors.dart';
import '../../../../../../core/theming/styels.dart';
import '../../../../../../core/widget/app_text_form_field.dart';
import '../../logic/cubit/login_cubit.dart';

class EmailandPasswordLogin extends StatefulWidget {
  const EmailandPasswordLogin({super.key});

  @override
  State<EmailandPasswordLogin> createState() => _EmailandPasswordLoginState();
}

class _EmailandPasswordLoginState extends State<EmailandPasswordLogin> {
  bool isObscureText = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Form(
          key: context.read<LoginCubit>().formKey,
          child: Column(
            children: [
              CustomFadeInLeft(
                duration: 900,
                child: AppTextFormField(
                  controller: context.read<LoginCubit>().emailController,
                  prefix: const Icon(Icons.email_outlined),
                  hintText: "email",
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a valid email';
                    }
                  },
                  enabledBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: ColorsManager.lightGray)),
                ),
              ),
              verticalSpace(20),
              CustomFadeInLeft(
                duration: 905,
                child: AppTextFormField(
                    isObscureText: isObscureText,
                    prefix: const Icon(Icons.lock_outline),
                    suffixIcon: GestureDetector(
                      onTap: () {
                        setState(() {
                          isObscureText = !isObscureText;
                        });
                      },
                      child: Icon(
                        color: const Color.fromARGB(255, 167, 165, 165),
                        isObscureText ? Icons.visibility_off : Icons.visibility,
                      ),
                    ),
                    controller: context.read<LoginCubit>().passwordController,
                    hintText: 'password',
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter a valid password';
                      }
                      return null;
                    },
                    enabledBorder: const UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: ColorsManager.lightGray))),
              ),
            ],
          )),
    );
  }
}
