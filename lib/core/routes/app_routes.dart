import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:homehand/core/di/dependace_injection.dart';
import 'package:homehand/core/routes/Routes_App.dart';
import 'package:homehand/core/routes/base_routes.dart';
import 'package:homehand/core/widget/under_build_screen.dart';
import 'package:homehand/featuers/Auth/featuers/login/UI/login_view.dart';
import 'package:homehand/featuers/Auth/featuers/login/data/model/login_repo_boody.dart';
import 'package:homehand/featuers/Auth/featuers/login/logic/cubit/login_cubit.dart';
import 'package:homehand/featuers/Auth/featuers/register/UI/register_view.dart';
import 'package:homehand/featuers/Auth/featuers/register/logic/cubit/register_cubit.dart';
import 'package:homehand/featuers/compineed/on_boarging/on_boarding.dart';
import 'package:homehand/featuers/customer/featuers/home/UI/homepage_screen.dart';
import 'package:homehand/featuers/customer/featuers/order_details/UI/order_details.dart';
import 'package:homehand/featuers/customer/featuers/orders_screen/UI/orders_screen.dart';
import 'package:homehand/featuers/customer/featuers/review_screen/UI/review_screen.dart';
import 'package:homehand/featuers/customer/featuers/service_details/UI/service_details.dart';
import 'package:homehand/featuers/customer/featuers/settings_screen/UI/settings_screen.dart';
import 'package:homehand/featuers/customer/featuers/workerProfile_user_screen/UI/workerProfile_user_screen.dart';
import 'package:homehand/featuers/customer/featuers/workerwhodoservice/UI/category_worker_screen.dart';
import 'package:homehand/featuers/customer/featuers/workerwhodoservice/data/model/Info_about_who_work_service_model.dart';
import 'package:homehand/featuers/woeker/workerProfile_worker_screen/UI/workerProfile_worker_screen.dart';



class AppRoutes {
  static Route<void> onGenerateRoute(RouteSettings settings) {
    final dynamic args = settings.arguments;
    switch (settings.name) {
      case RoutesApp.onBoarding:
        return BaseRoute(
          page: OnBoarding(),
        );
      case RoutesApp.login:
        return BaseRoute(
            page: BlocProvider(
          create: (context) => getIt<LoginCubit>(),
          child: const LoginView(),
        ));
      case RoutesApp.signUp:
        return BaseRoute(
          page: BlocProvider(
            create: (context) => getIt<RegisterCubit>(),
            child: RegisterView(),
          ),
        );
      case RoutesApp.homeCustomer:
        return BaseRoute(page: const HomeScreen());
      case RoutesApp.workersWhoDoService:
        return BaseRoute(
          page: const WorkersWhoDoService(),
        );
      case RoutesApp.workerProfileUserScreen:
        return BaseRoute(
            page: WorkerProfileUserScreen(
          data: args as GetAllWorkerinfoModel,
        ));
      case RoutesApp.serviceDetails:
        return BaseRoute(page: const ServiceDetails());
      case RoutesApp.reviewScreen:
        return BaseRoute(page: const ReviewScreen());
      case RoutesApp.orderDetails:
        return BaseRoute(page: const OrderDetails());
      case RoutesApp.allOrderSubmited:
        return BaseRoute(page: const OrdersScreen());
      case RoutesApp.settingsScreen:
        return BaseRoute(page: const SettingsScreen());
      case RoutesApp.homeWorker:
        return BaseRoute(page:  workerProfileWorker(data: args as LoginResponse,));

      default:
        return BaseRoute(page: const PageUnderBuildScreen());
    }
  }
}
