import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:homehand/featuers/customer/featuers/service_details/UI/view/serviceDetails_info.dart';
import 'package:homehand/featuers/customer/featuers/service_details/UI/widgets/order_bloc_listener.dart';

class ServiceDetailsBody extends StatelessWidget {
  const ServiceDetailsBody({super.key, required this.id});
  final String id;
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      ServiceDetailsInfo(id: id,),
      OrderBlocListener(),
    ],);
  }
}
