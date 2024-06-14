import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:homehand/core/helper/spacing.dart';
import 'package:homehand/core/theming/colors.dart';
import 'package:homehand/core/theming/styels.dart';
import 'package:homehand/featuers/customer/featuers/orders_screen/UI/widgets/order_buttons.dart';
import 'package:homehand/featuers/woeker/workerProfile_worker_screen/data/model/get_all_orders_to_workers.dart';

class OrderItem extends StatelessWidget {
  OrderItem({Key? key, required this.Orders}) : super(key: key);
  final Order Orders;
  static String coin = "LE";

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400.w,
      height: 325.h,
      margin: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
      padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 10.h),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Icon(Icons.star, color: Colors.yellow, size: 18),
              Text(
                 '${Orders.rating}',
                style: const TextStyle(
                    fontWeight: FontWeight.bold, color: Color(0xff053B62)),
              ),
            ],
          ),
          Row(
            children: [
              Stack(
                children: [
                  Container(
                    width: 75.w,
                    height: 75.h,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      border: Border.all(
                        color: ColorsManager.mainBlue,
                        width: 2.w,
                      ),
                    ),
                    child: Container(
                      width: 60.w,
                      height: 60.h,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey[100],
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.7),
                            spreadRadius: 1,
                            blurRadius: 1,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(80),
                        child: Image.network(
                          '${Orders.workerId!.profileImage}',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.all(8.0.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${Orders.workerId!.worker!.firstName} ${Orders.workerId!.worker!.secondName}',
                      style: TextStyles.font14BlueSemiBold,
                    ),
                    Text(
                      '${Orders.workerId!.worker!.email}',
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
            ],
          ),
          verticalSpace(10),
          const Divider(
            color: Colors.black26,
            thickness: 1,
          ),
          verticalSpace(10),
          Row(
            children: [
              Text('Order Details', style: TextStyles.font14BlueSemiBold),
              const Spacer(),
              Text('Price details', style: TextStyles.font14BlueSemiBold),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              const Icon(Icons.place,
                  color: ColorsManager.darkBlue, size: 20),
              horizentalSpace(7),
              Text(
                '${Orders.address}',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[500],
                    fontSize: 15.sp),
              ),
              const Spacer(),
              Text(
                '${Orders.paymentMethod}',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[500],
                    fontSize: 15.sp),
              ),
            ],
          ),
          Row(
            children: [
              const Icon(Icons.date_range,
                  color: ColorsManager.darkBlue, size: 20),
              horizentalSpace(7),
              Text(
                '${Orders.feedBack}',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[500],
                    fontSize: 15.sp),
              ),
              const Spacer(),
              Text(
                '${Orders.orderPrice} $coin',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[500],
                    fontSize: 15.sp),
              ),
            ],
          ),
          verticalSpace(25),
          OrderButtons(isPending:Orders.orderStatus,order: Orders,),
        ],
      ),
    );
  }
}
