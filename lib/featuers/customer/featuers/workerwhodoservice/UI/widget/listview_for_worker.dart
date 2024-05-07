import 'package:flutter/material.dart';

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
            
          },
          infoService: serviceList[index],
        );
      },
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
      childAspectRatio: 2/3,
      crossAxisSpacing: 16,
      mainAxisSpacing: 10,
      
      ),
    );
  }
}
