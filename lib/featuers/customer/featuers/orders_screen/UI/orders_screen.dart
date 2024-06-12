import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/helper/extinstion.dart';
import '../../../../../core/theming/colors.dart';
import 'view/orders_body.dart';


class OrdersScreen extends StatefulWidget {
  const OrdersScreen({Key? key}) : super(key: key);

  @override
  State<OrdersScreen> createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen> {
  bool isWorker = false;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: isWorker ? 2 : 3,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            icon:
                const Icon(Icons.arrow_back_ios, color: ColorsManager.darkBlue),
            onPressed: () {
              context.pop();
            },
          ),
          title: const Text(
            'Orders',
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.black, fontSize: 30),
          ),
          centerTitle: true,
          elevation: 0,
          bottom: TabBar(
            unselectedLabelColor: ColorsManager.mainBlue,
            labelColor: ColorsManager.darkBlue,
            indicatorColor: ColorsManager.darkBlue,
            tabs: [
              Tab(
                  child: Text("Completed",
                      style: TextStyle(
                          fontSize: 20.sp, fontWeight: FontWeight.bold))),
              Tab(
                  child: Text("Pending",
                      style: TextStyle(
                          fontSize: 20.sp, fontWeight: FontWeight.bold))),
              if (!isWorker)
                Tab(
                    child: Text("Cancelled",
                        style: TextStyle(
                            fontSize: 20.sp, fontWeight: FontWeight.bold))),
            ],
          ),
        ),
        body: OrdersBody(),
      ),
    );
  }
}
