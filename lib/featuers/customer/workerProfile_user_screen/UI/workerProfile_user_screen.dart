import 'package:flutter/material.dart';
import 'package:homehand/featuers/customer/workerProfile_user_screen/UI/view/WPU_body.dart';
import 'package:homehand/featuers/customer/workerProfile_user_screen/UI/widgets/appbar_worker_profile_to_user.dart';

class WorkerProfileUserScreen extends StatelessWidget {
  const WorkerProfileUserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBarWorkerProfileForUser(context) ,
      backgroundColor: const Color(0xffD9D9D9),
      body: const WPUBody(),
    );
  }
}


