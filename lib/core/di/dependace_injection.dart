import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:homehand/core/networking/api_services.dart';
import 'package:homehand/core/networking/dio_factory.dart';
import 'package:homehand/featuers/Auth/featuers/login/data/repos/login_repo.dart';
import 'package:homehand/featuers/Auth/featuers/login/logic/cubit/login_cubit.dart';
import 'package:homehand/featuers/Auth/featuers/register/data/repos/register_data_repo.dart';
import 'package:homehand/featuers/Auth/featuers/register/logic/cubit/register_cubit.dart';
import 'package:homehand/featuers/customer/featuers/orders_screen/logic/get_orders_cubit.dart';
import 'package:homehand/featuers/customer/featuers/service_details/data/repo/order_repo.dart';
import 'package:homehand/featuers/customer/featuers/service_details/logic/order_cubit.dart';
import 'package:homehand/featuers/customer/featuers/workerwhodoservice/bloc/cubit/getallworker_cubit.dart';
import 'package:homehand/featuers/customer/featuers/workerwhodoservice/data/repo/get_all_worker_repo.dart';
import 'package:homehand/featuers/woeker/workerProfile_worker_screen/data/data_repo/get_all_orders_data_repo.dart';
import 'package:homehand/featuers/woeker/workerProfile_worker_screen/logic/cubit/getallorderstoworker_cubit.dart';


final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  // Dio & ApiService
  Dio dio = DioFactory.getDio();
   final navigatorKey = GlobalKey<NavigatorState>();
  getIt..registerLazySingleton<ApiService>(() => ApiService(dio))
..registerSingleton<GlobalKey<NavigatorState>>(navigatorKey)
  // login
  ..registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));

  // signup
  getIt.registerLazySingleton<RegisterRepo>(() => RegisterRepo(getIt()));
  getIt.registerFactory<RegisterCubit>(() => RegisterCubit(getIt()));

  //getallworker
  getIt..registerLazySingleton<allworkRepo>(() => allworkRepo(getIt()))
  ..registerFactory<GetallworkerCubit>(() => GetallworkerCubit(getIt()));
  //getallordertoworker
  getIt..registerLazySingleton<getallordersrepo>(() => getallordersrepo(getIt()))
  ..registerFactory<GetallOrderstoWorkerCubit>(() => GetallOrderstoWorkerCubit(getIt()))

//service details
    ..registerLazySingleton<OrderRepo>(() => OrderRepo(getIt()))
    ..registerFactory<OrderCubit>(() => OrderCubit(getIt()))

    ..registerFactory<GetUOrdersCubit>(() => GetUOrdersCubit(getIt()));

}


