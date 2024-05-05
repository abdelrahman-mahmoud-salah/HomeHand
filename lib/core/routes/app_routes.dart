import 'package:flutter/material.dart';

import 'package:homehand/core/routes/Routes_App.dart';
import 'package:homehand/core/routes/base_routes.dart';
import 'package:homehand/core/widget/under_build_screen.dart';
import 'package:homehand/featuers/Auth/featuers/login/UI/login_view.dart';
import 'package:homehand/featuers/compineed/on_boarging/on_boarding.dart';
import 'package:homehand/featuers/Auth/featuers/register/UI/register_view.dart';

class AppRoutes {
  static Route<void> onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case RoutesApp.onBoarding:
        return BaseRoute(
          page: OnBoarding(),
        );
      case RoutesApp.login:
        return BaseRoute(page: const LoginView());
      case RoutesApp.signUp:
        return BaseRoute(page: const RegisterView());
      // case homeCustomer:
      //   return BaseRoute(page: const HomeCustomerScreen());

      default:
        return BaseRoute(page: const PageUnderBuildScreen());
    }
  }
}
