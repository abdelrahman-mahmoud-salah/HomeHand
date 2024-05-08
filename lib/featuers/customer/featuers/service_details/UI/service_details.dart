import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:homehand/core/helper/extinstion.dart';

import 'view/serviceDetails_body.dart';

class ServiceDetails extends StatefulWidget {
  const ServiceDetails({Key? key}) : super(key: key);

  @override
  State<ServiceDetails> createState() => _ServiceDetailsState();
}

class _ServiceDetailsState extends State<ServiceDetails> {
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
        body: const ServiceDetailsBody(),
      ),
    );
  }
}
