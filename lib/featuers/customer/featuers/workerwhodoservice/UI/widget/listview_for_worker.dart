import 'package:flutter/material.dart';
import 'package:homehand/core/helper/extinstion.dart';
import 'package:homehand/core/routes/Routes_App.dart';

import 'package:homehand/featuers/customer/featuers/workerwhodoservice/UI/widget/Category_person_item.dart';
import 'package:homehand/featuers/customer/featuers/workerwhodoservice/UI/widget/test_list.dart';

class AllWorkerDoService extends StatelessWidget {
  const AllWorkerDoService({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      itemCount: serviceList.length,
      itemBuilder: (context, index) {
        return ItemContent(
          onTap: () {
            context.pushNamed(RoutesApp.workerProfileUserScreen);
          },
          infoService: serviceList[index],
        );
      },
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 2 / 3,
        crossAxisSpacing: 16,
        mainAxisSpacing: 10,
      ),
    );
  }
}
