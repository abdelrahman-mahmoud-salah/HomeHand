import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:homehand/core/helper/spacing.dart';
import 'package:homehand/featuers/customer/featuers/order_details/UI/widgets/custom_stepper.dart';
import 'package:homehand/featuers/customer/featuers/order_details/UI/widgets/worker_buttons.dart';


class OrderDetailsBody extends StatefulWidget {
  const OrderDetailsBody({super.key});

  @override
  State<OrderDetailsBody> createState() => _OrderDetailsBodyState();
}

class _OrderDetailsBodyState extends State<OrderDetailsBody> {
  bool isWorker = false;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0).w,
      child: ListView(
        children: <Widget>[
           Padding(
            padding: const EdgeInsets.all(20.0).w,
            child: Center(
              child: Text(
                'Order Id 5253',
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
                  padding: EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.list_alt,
                    color: Colors.blue,
                    size: 25,
                  ),
                ),
                Text(
                  'Order Details',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.sp),
                ),
              ],
            ),
            subtitle: const Padding(
              padding: EdgeInsets.only(left: 28.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Clean For Full House',
                    style: TextStyle(color: Colors.black87),
                  ),
                  Text(
                    "A clean for all house area: 200m",
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
                  )
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 15.0),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.location_on_outlined,
                    color: Colors.blue,
                    size: 25,
                  ),
                ),
                Text(
                  'flat7,elmsalla,street15,fayoum',
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
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
                  '08:30 Am, 22may, 2023',
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16.sp),
                ),
              ],
            ),
          ),
          if (!isWorker)
             Padding(
              padding: EdgeInsets.symmetric(horizontal: 80.w, vertical: 20.h),
              child: const CustomStepper(currentIndex: 0),
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
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.sp),
                ),
              ],
            ),
            subtitle: Padding(
              padding: EdgeInsets.only(left: 28.0.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Clean For Full House        \$800",
                    style: TextStyle(color: Colors.black87, fontSize: 12.sp),
                  ),
                  Text(
                    "for Worker                          \$720",
                    style: TextStyle(color: Colors.black87, fontSize: 12.sp),
                  ),
                  Text(
                    "For ServicesApp                \$80",
                    style: TextStyle(color: Colors.black87, fontSize: 12.sp),
                  ),
                  Text(
                    "Paid With                            Cash",
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
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.sp),
                ),
              ],
            ),
            subtitle: const Padding(
              padding: EdgeInsets.only(left: 26.0),
              child: Text(
                  'Book your professional handyman service for any of your home needs. This service is charged at \$60/ per hour, plus any parts if needed.'),
            ),
          ),
          verticalSpace(20),
          if (isWorker)
            const WorkerButtons(),
        ],
      ),
    );
  }
}
