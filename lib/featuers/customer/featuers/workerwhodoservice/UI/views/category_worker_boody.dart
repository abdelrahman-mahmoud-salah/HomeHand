import 'dart:ffi';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:homehand/core/helper/spacing.dart';
import 'package:homehand/core/theming/colors.dart';
import 'package:homehand/featuers/customer/featuers/workerwhodoservice/UI/widget/app_bar_worker_info.dart';
import 'package:homehand/featuers/customer/featuers/workerwhodoservice/UI/widget/form_searchingandfilter_for%20_worker.dart';
import 'package:homehand/featuers/customer/featuers/workerwhodoservice/UI/widget/listview_for_worker.dart';

class WorkersWhoDoServiceBoody extends StatelessWidget {
  const WorkersWhoDoServiceBoody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0.w),
      child: CustomScrollView(
        scrollBehavior: ScrollBehavior(),
        physics: ClampingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
              child: Column(
            children: [
              AppBarWorkerInfo(),
              verticalSpace(8),
              SearchingAndFilter(),
              verticalSpace(8),
            ],
          )),
          AllWorkerDoService(),
        ],
      ),
    );
  }
}
