import 'package:flutter/material.dart';
import 'view/WPU_body.dart';
import 'widgets/appbar_worker_profile_to_user.dart';
import '../../workerwhodoservice/bloc/cubit/getallworker_state.dart';
import '../../workerwhodoservice/data/model/Info_about_who_work_service_model.dart';

class WorkerProfileUserScreen extends StatelessWidget {
  const WorkerProfileUserScreen({super.key, required this.data});
final GetAllWorkerinfoModel data;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWorkerProfileForUser(context),
      backgroundColor: const Color(0xffD9D9D9),
      body: WPUBody(
        data: data,
      ),
    );
  }
}
