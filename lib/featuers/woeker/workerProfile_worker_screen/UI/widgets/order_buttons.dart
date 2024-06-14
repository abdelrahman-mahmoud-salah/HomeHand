import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:homehand/core/helper/extinstion.dart';
import 'package:homehand/core/routes/Routes_App.dart';
import 'package:homehand/core/theming/colors.dart';
import 'package:homehand/featuers/woeker/workerProfile_worker_screen/data/model/get_all_orders_to_workers.dart';
import 'package:homehand/featuers/woeker/workerProfile_worker_screen/logic/State_cubit/state_order_cubit.dart';

class OrderWButtons extends StatelessWidget {
  const OrderWButtons({super.key, required this.isPending, required this.order});

  final String? isPending;
  final Order order;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        if(isPending == 'Cancelled')
          Center(child: Text('You cancelled order', style: TextStyle(fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.red[800]),),),

        if(isPending != 'Cancelled')
          ElevatedButton(
            onPressed: () {
              context.pushNamed(RoutesApp.orderDetails, arguments: order);
            },
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: ColorsManager.mainBlue,
              fixedSize: const Size(130, 40),
              shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            ),
            child:  Text(

              'View details',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        if(isPending == 'Pending')
          ElevatedButton(
            onPressed: () {
              context.read<stateOrderCubit>().status='Cancelled';
              context.read<stateOrderCubit>().emitstateOrderState();
            },
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Colors.red,
              fixedSize: const Size(130, 40),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
            ),
            child: const Text(
              'Cancel',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
          ),
      ],
    );
  }
}
