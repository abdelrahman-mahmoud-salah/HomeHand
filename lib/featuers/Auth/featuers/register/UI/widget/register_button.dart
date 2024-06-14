import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/theming/colors.dart';
import '../../../../../../core/widget/button_app.dart';
import '../../logic/cubit/register_cubit.dart';

class RegisterButton extends StatelessWidget {
  const RegisterButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ButtonApp(
      onPressed: () {
        validateThenDoLogin(context);
      },
      widthpading: 20,
      color: Colors.white,
      icon: '',
      heighticon: 20,
      widthicon: 20,
      side: BorderSide(color: Colors.white, width: 2.w),
      height: 2,
      textutton: 'Create an account',
      backgroundColor: const MaterialStatePropertyAll(ColorsManager.mainBlue),
    );
  }
}

void validateThenDoLogin(BuildContext context) {
  if (context.read<RegisterCubit>().formKey.currentState!.validate()) {
    context.read<RegisterCubit>().emitRegister();
  }
}
