import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:homehand/core/helper/spacing.dart';
import 'package:homehand/core/theming/colors.dart';
import 'package:homehand/featuers/customer/featuers/workerwhodoservice/data/model/Info_about_who_work_service_model.dart';

class ItemContent extends StatelessWidget {
  final InfoWoekerService infoService;
  void Function()? onTap;
  ItemContent({Key? key, required this.infoService, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 110.h,
        width: 110.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.grey[300], // Changed to Colors.grey[300]
          boxShadow: const [
            BoxShadow(
              color: Colors.white60,
              offset: Offset(1, 1),
              blurRadius: 1,
            )
          ],
        ),
        margin: const EdgeInsets.all(10),
        child: Stack(
          children: [
            Positioned(
              top: 8,
              left: 5,
              right: 5,
              child: PreferredSize(
                preferredSize: Size(110.w, 170.h),
                child: Container(
                  height: 190.h,
                  width: 100.w,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover, // Changed to BoxFit.cover
                      image: NetworkImage(infoService.imageUrl),
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 7,
              right: 3,
              child: Container(
                width: 30.w,
                height: 15.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    const Icon(
                      Icons.star_border_rounded,
                      color: Colors.orange,
                      size: 12,
                    ),
                    Text(
                      infoService.rate!,
                      style: TextStyle(
                        fontSize: 8.sp,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xff014F86),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 1,
              right: 1,
              left: 1,
              child: Container(
                width: 160.w,
                height: 100.h,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                  ),
                  color: Colors.white,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5.0).w,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            infoService.salary!,
                            style: const TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Colors.redAccent,
                            ),
                          ),
                          Text(
                            'off ${infoService.ofer}',
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                              color: Colors.teal,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0).w,
                      child: Text(
                        infoService.serviceName!,
                        style: TextStyle(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.bold,
                          color: const Color(0xff014F86),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0).w,
                      child: Text(
                        'by ${infoService.workerName}',
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xff014F86),
                        ),
                      ),
                    ),
                    verticalSpace(5),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
