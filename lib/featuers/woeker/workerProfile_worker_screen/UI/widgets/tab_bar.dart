import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:homehand/core/theming/colors.dart';
import 'package:homehand/featuers/woeker/workerProfile_worker_screen/UI/widgets/orders_body.dart';

class MyTabBar extends StatelessWidget {
  const MyTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: DefaultTabController(
        length: 3,
        child: Column(
          children: <Widget>[
            TabBar(
              unselectedLabelColor: ColorsManager.mainBlue,
              labelColor: ColorsManager.darkBlue,
              indicatorColor: ColorsManager.darkBlue,
              tabs: [
                Tab(child: Text("Orders", style: TextStyle(fontSize: 20.sp))),
                Tab(
                    child:
                        Text("Accepting", style: TextStyle(fontSize: 20.sp))),
                Tab(
                    child:
                        Text("canceling", style: TextStyle(fontSize: 20.sp))),
              ],
            ),
            const Expanded(
              child: OrdersView(),
            ),
          ],
        ),
      ),
    );
  }
}


