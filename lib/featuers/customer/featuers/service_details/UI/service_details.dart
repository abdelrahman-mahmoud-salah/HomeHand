import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:homehand/core/di/dependace_injection.dart';
import 'package:homehand/core/helper/extinstion.dart';
import 'package:homehand/featuers/customer/featuers/service_details/logic/order_cubit.dart';

import 'view/serviceDetails_body.dart';

class ServiceDetails extends StatelessWidget {
  const ServiceDetails({Key? key, required this.id}) : super(key: key);
  final String id;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 100.h,
          elevation: 0,
          leading: IconButton(
          onPressed: (){context.pop();},
             icon: const Icon(Icons.arrow_back_ios_rounded, size: 30, color: Color(0xff014F86))),
          title:  Text(
            'Service Details',
            style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: BlocProvider(
    create: (context) => getIt<OrderCubit>(),
    child: ServiceDetailsBody(id: id,),
      ),),
    );
  }
}
