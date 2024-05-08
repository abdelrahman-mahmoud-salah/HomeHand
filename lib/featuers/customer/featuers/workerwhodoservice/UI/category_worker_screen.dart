
import 'package:flutter/material.dart';
import 'package:homehand/featuers/customer/featuers/workerwhodoservice/UI/views/category_worker_boody.dart';

class WorkersWhoDoService extends StatelessWidget {
  const WorkersWhoDoService({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(

        body:WorkersWhoDoServiceBoody()
        ,

      ),
    );
  }
}