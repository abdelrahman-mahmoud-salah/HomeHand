import 'package:flutter/material.dart';
import 'package:homehand/core/routes/Routes_App.dart';
import 'package:homehand/core/routes/base_routes.dart';
import 'package:homehand/core/widget/under_build_screen.dart';
import 'package:homehand/featuers/Auth/featuers/login/UI/login_view.dart';
import 'package:homehand/featuers/Auth/featuers/register/UI/register_view.dart';
import 'package:homehand/featuers/compineed/on_boarging/on_boarding.dart';
import 'package:homehand/featuers/customer/featuers/home/UI/homepage_screen.dart';
import 'package:homehand/featuers/customer/featuers/order_details/UI/order_details.dart';
import 'package:homehand/featuers/customer/featuers/review_screen/UI/review_screen.dart';
import 'package:homehand/featuers/customer/featuers/service_details/UI/service_details.dart';
import 'package:homehand/featuers/customer/featuers/workerwhodoservice/UI/category_worker_screen.dart';
import 'package:homehand/featuers/customer/featuers/workerProfile_user_screen/UI/workerProfile_user_screen.dart';

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
      case RoutesApp.homeCustomer:
        return BaseRoute(page: const HomeScreen());
      case RoutesApp.workersWhoDoService:
        return BaseRoute(page: const WorkersWhoDoService());
      case RoutesApp.workerProfileUserScreen:
        return BaseRoute(page: const WorkerProfileUserScreen());
      case RoutesApp.serviceDetails:
        return BaseRoute(page: const ServiceDetails());
      case RoutesApp.reviewScreen:
        return BaseRoute(page: const ReviewScreen());
      case RoutesApp.orderDetails:
        return BaseRoute(page: const OrderDetails());

      default:
        return BaseRoute(page: const PageUnderBuildScreen());
    }
  }
}
