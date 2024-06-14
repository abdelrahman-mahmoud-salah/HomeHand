import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:homehand/core/helper/spacing.dart';
import 'package:homehand/featuers/customer/featuers/order_details/UI/widgets/Submit_button.dart';
import 'package:homehand/featuers/woeker/workerProfile_worker_screen/data/model/get_all_orders_to_workers.dart';

class OrderDetailsBody extends StatelessWidget {
   OrderDetailsBody({super.key, required this.order});
  final Order order;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20).w,
      child: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(20).w,
            child: Center(
              child: Text(
                'Order Id ${order.id.substring(20)}',
                style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.sp),
              ),
            ),
          ),
          ListTile(
            title: Row(
              children: [
                const Padding(
                  padding: EdgeInsets.all(8),
                  child: Icon(
                    Icons.list_alt,
                    color: Colors.blue,
                    size: 25,
                  ),
                ),
                Text(
                  'Order Details',
                  style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 16.sp),
                ),
              ],
            ),
            subtitle:  Padding(
              padding: const EdgeInsets.only(left: 28),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    order.description??'no description',
                    style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
                  )
                ],
              ),
            ),
          ),
           Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Row(
              children: [
                const Padding(
                  padding: EdgeInsets.all(8),
                  child: Icon(
                    Icons.location_on_outlined,
                    color: Colors.blue,
                    size: 25,
                  ),
                ),
                Text(
                  '${order.address}',
                  style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 15.0.w),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0.w),
                  child: const Icon(
                    Icons.access_time,
                    color: Colors.blue,
                    size: 25,
                  ),
                ),
                Text(
                  '${order.feedBack}',
                  style:
                      TextStyle(fontWeight: FontWeight.w400, fontSize: 16.sp),
                ),
              ],
            ),
          ),
          ListTile(
            title: Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0.w),
                  child: const Icon(
                    Icons.list_alt,
                    color: Colors.blue,
                    size: 25,
                  ),
                ),
                Text(
                  'Price Details',
                  style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 16.sp),
                ),
              ],
            ),
            subtitle: Padding(
              padding: EdgeInsets.only(left: 28.0.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Clean For Full House        \$${order.orderPrice}',
                    style: TextStyle(color: Colors.black87, fontSize: 12.sp),
                  ),
                  Text(
                    'for Worker                          \$${order.orderPrice! * 0.9}',
                    style: TextStyle(color: Colors.black87, fontSize: 12.sp),
                  ),
                  Text(
                    'For ServicesApp                \$${order.orderPrice! * 0.1}',
                    style: TextStyle(color: Colors.black87, fontSize: 12.sp),
                  ),
                  Text(
                    'Paid With                            ${order.paymentMethod}',
                    style: TextStyle(color: Colors.black87, fontSize: 12.sp),
                  ),
                ],
              ),
            ),
          ),
          ListTile(
            title: Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.w),
                  child: const Icon(
                    Icons.sticky_note_2_outlined,
                    color: Colors.blue,
                    size: 25,
                  ),
                ),
                Text(
                  'Task Notes',
                  style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 16.sp),
                ),
              ],
            ),
            subtitle: const Padding(
              padding: EdgeInsets.only(left: 26),
              child: Text(
                  'Book your professional handyman service for any of your home needs. This service is charged at \$60/ per hour, plus any parts if needed.'),
            ),
          ),
          verticalSpace(20),
          const ButtonSumbit(),
        ],
      ),
    );
  }
}
