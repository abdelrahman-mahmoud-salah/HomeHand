import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/di/dependace_injection.dart';
import '../../../../../core/helper/shared_perefernce.dart';
import 'views/category_worker_boody.dart';
import '../bloc/cubit/getallworker_cubit.dart';

class WorkersWhoDoService extends StatelessWidget {
  const WorkersWhoDoService({super.key});

  @override
  Widget build(BuildContext context) {
   

    return SafeArea(
      child: Scaffold(
        body: BlocProvider(
          create: (context) =>
              getIt<GetallworkerCubit>()..emitgetallworkerStates(),
          child: WorkersWhoDoServiceBoody(),
        ),
      ),
    );
  }
}
