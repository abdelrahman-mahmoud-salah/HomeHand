import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../../core/helper/extinstion.dart';
import '../../../../../../core/routes/Routes_App.dart';
import '../../../../../../core/theming/colors.dart';
import '../../../../../../core/theming/styels.dart';

import '../../../login/logic/cubit/login_state.dart';
import '../../logic/cubit/register_cubit.dart';
import '../../logic/cubit/register_state.dart';

class RegisterBlocListener extends StatelessWidget {
  const RegisterBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: strict_raw_type
    return BlocListener<RegisterCubit, RegisterState>(
      listenWhen: (previous, current) =>
          current is LoadingRegister ||
          current is SuccessRegister ||
          current is ErrorRegister,
      listener: (context, state) {
        state.whenOrNull(
          loading: () {
            showDialog(
              context: context,
              builder: (context) => const Center(
                child: CircularProgressIndicator(
                  color: ColorsManager.mainBlue,
                ),
              ),
            );
          },
          success: () {
            debugPrint("Success");
            context.pop();
            context.pushNamed(RoutesApp.login);
          },
          error: (error) {
            debugPrint(error);
            setupErrorState(context, "this email not found");
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }

  void setupErrorState(BuildContext context, String error) {
    context.pop();
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        icon: const Icon(
          Icons.error,
          color: Colors.red,
          size: 32,
        ),
        content: Text(
          error,
          style: TextStyles.font15DarkBlueMedium,
        ),
        actions: [
          TextButton(
            onPressed: () {
              context.pop();
            },
            child: Text(
              'Got it',
              style: TextStyles.font14BlueSemiBold,
            ),
          ),
        ],
      ),
    );
  }
}
