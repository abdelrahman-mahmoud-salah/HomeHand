import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/helper/spacing.dart';
import '../../../../../../core/theming/colors.dart';
import '../../data/model/Info_about_who_work_service_model.dart';

class ItemContent extends StatelessWidget {
  ItemContent(
      {Key? key,
      this.onTap,
      this.rate,
      this.serviceName,
      this.workerName,
      required this.image})
      : super(key: key);
  final String image;
  final String? rate;
  final String? serviceName;
  final String? workerName;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 210.w,
        height: 400.h,
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
                      fit: BoxFit.fill, // Changed to BoxFit.cover
                      image: NetworkImage(image),
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
                      size: 16,
                    ),
                    Text(
                      rate!,
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
                          const Text(
                            '500\$',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Colors.redAccent,
                            ),
                          ),
                          Text(
                            'off 0 %',
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
                        serviceName!,
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
                        'by ${workerName!}',
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
