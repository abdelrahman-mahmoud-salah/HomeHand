import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:homehand/core/di/dependace_injection.dart';
import 'package:homehand/core/helper/extinstion.dart';
import 'package:homehand/core/theming/colors.dart';
import 'package:homehand/featuers/customer/featuers/orders_screen/UI/view/orders_body.dart';
import 'package:homehand/featuers/customer/featuers/orders_screen/logic/get_orders_cubit.dart';


class OrdersScreen extends StatefulWidget {
  const OrdersScreen({Key? key}) : super(key: key);

  @override
  State<OrdersScreen> createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen> {


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
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
                  child: Text('Pending',
                      style: TextStyle(
                          fontSize: 20.sp, fontWeight: FontWeight.bold))),
              Tab(
                  child: Text('Completed',
                      style: TextStyle(
                          fontSize: 20.sp, fontWeight: FontWeight.bold))),
              Tab(
                    child: Text('Cancelled',
                        style: TextStyle(
                            fontSize: 20.sp, fontWeight: FontWeight.bold))),
            ],
          ),
        ),
        body: BlocProvider(create: (context) => getIt<GetUOrdersCubit>()..emitGetOrdersStates(),
        child: OrdersBody(),),
      ),
    );
  }
}
