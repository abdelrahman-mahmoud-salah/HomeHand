import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/animation/animation_todo.dart';
import '../../../../../../core/helper/extinstion.dart';
import '../../../../../../core/routes/Routes_App.dart';
import '../../../../../../core/theming/colors.dart';
import '../../../../../../core/theming/styels.dart';
import '../../logic/cubit/login_cubit.dart';

class ButtonLoginApp extends StatelessWidget {
  const ButtonLoginApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        fixedSize: MaterialStatePropertyAll(Size(double.infinity, 50.h)),
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(23),
          ),
        ),
        backgroundColor: const MaterialStatePropertyAll(ColorsManager.mainBlue),
      ),
      onPressed: () {
        validateThenDoLogin(context);
      },
      child: CustomFadeInRight(
        duration: 900,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Login ',
              style: TextStyles.font16WhiteMedium.copyWith(fontSize: 20.sp),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

void validateThenDoLogin(BuildContext context) {
  if (context.read<LoginCubit>().formKey.currentState!.validate()) {
    context.read<LoginCubit>().emitLoginStates();
  }
}
