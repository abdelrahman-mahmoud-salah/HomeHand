import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:homehand/core/helper/spacing.dart';
import 'package:homehand/featuers/customer/workerProfile_user_screen/UI/widgets/book_button.dart';
import 'package:homehand/featuers/customer/workerProfile_user_screen/UI/widgets/description_for_worker.dart';
import 'package:homehand/featuers/customer/workerProfile_user_screen/UI/widgets/id_woker_info.dart';
import 'package:homehand/featuers/customer/workerProfile_user_screen/UI/widgets/state_item.dart';

class WPUBody extends StatelessWidget {
  


  const WPUBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          top: MediaQuery.of(context).size.height / 5,
          child: Container(
            color: Colors.white,
            padding: const EdgeInsets.all(25).w,
            child: Column(
              children: [
                verticalSpace(200),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TextButton(
                      child: StateItem(value: '100+', label: 'Review'),
                      onPressed: () {
                        // context.pushNamed(Routes.reviewScreen);
                      },
                    ),
                    StateItem(value: '500+', label: 'Ongoing'),
                    StateItem(value: '700+', label: 'Client'),
                  ],
                ),
                verticalSpace(15),
                DescriptonForWorker(),
              ],
            ),
          ),
        ),
        Positioned(
          top: 100.h,
          left: 150.w,
          child:const IdWorkerInfo(),
        ),
        //book_button
        const Positioned(
          bottom: 25,
          left: 0,
          right: 0,
          child: BookBuutton(),
        ),
      ],
    );
  }
}
