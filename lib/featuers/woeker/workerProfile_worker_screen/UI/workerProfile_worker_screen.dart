import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:homehand/core/di/dependace_injection.dart';
import 'package:homehand/core/helper/extinstion.dart';
import 'package:homehand/core/theming/colors.dart';
import 'package:homehand/featuers/Auth/featuers/login/data/model/login_repo_boody.dart';
import 'package:homehand/featuers/woeker/workerProfile_worker_screen/UI/view/WPW_body.dart';
import 'package:homehand/featuers/woeker/workerProfile_worker_screen/UI/widgets/bottom_sheet.dart';
import 'package:homehand/featuers/woeker/workerProfile_worker_screen/logic/cubit/getallorderstoworker_cubit.dart';

class workerProfileWorker extends StatelessWidget {
  workerProfileWorker({Key? key, required this.data}) : super(key: key);
  final LoginResponse data;

  @override
  Widget build(BuildContext context) {
    print(data);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Center(
          child: IconButton(
            icon:
                const Icon(Icons.arrow_back_ios, color: ColorsManager.darkBlue),
            onPressed: () {
              context.pop();
            },
          ),
        ),
        title: const Text(
          'Profile',
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.blue, fontSize: 24),
        ),
        centerTitle: true,
        elevation: 0,
        toolbarHeight: 100.h, // Increased app bar height
      ),
      bottomSheet: const MyBottomSheet(),
      body: BlocProvider(
        create: (context) => getIt<GetallOrderstoWorkerCubit>()..emitgetallworkerStates(),
        child: WPWBody(
          data: data,
        ),
      ),
    );
  }
}
