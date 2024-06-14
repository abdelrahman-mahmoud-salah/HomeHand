import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../../core/helper/extinstion.dart';
import '../../../../../../core/routes/Routes_App.dart';
import '../../../../../../core/theming/colors.dart';
import '../../../../../../core/theming/styels.dart';
import '../../../../../../core/widget/custom_error.dart';
import '../../data/model/login_repo_boody.dart';
import '../../data/model/login_request_boody.dart';
import '../../data/repos/login_repo.dart';
import '../../logic/cubit/login_cubit.dart';
import '../../logic/cubit/login_state.dart';

class LoginBlocListener extends StatelessWidget {
  const LoginBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listenWhen: (previous, current) =>
          current is Loading || current is Success || current is Error,
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
          success: (loginResponse) {
            debugPrint("Success");
            context.pop();
            print(loginResponse.userType);
            if (loginResponse.userType == 'worker') {
              context.pushReplacementNamed(RoutesApp.homeWorker,
                  arguments: loginResponse);
            } else {
              context.pushReplacementNamed(RoutesApp.homeCustomer, arguments:loginResponse );
            }
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
}
