import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/helper/spacing.dart';
import '../widgets/book_button.dart';
import '../widgets/description_for_worker.dart';
import '../widgets/id_woker_info.dart';
import '../widgets/state_item.dart';
import '../../../workerwhodoservice/data/model/Info_about_who_work_service_model.dart';

class WPUBody extends StatelessWidget {
  const WPUBody({super.key, required this.data});
 final GetAllWorkerinfoModel data;
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
                      child: StateItem(
                          value: '${data.reviews_numbers}+', label: 'Review'),
                      onPressed: () {
                        // context.pushNamed(Routes.reviewScreen);
                      },
                    ),
                    StateItem(value: '500+', label: 'Ongoing'),
                    StateItem(value: '700+', label: 'Client'),
                  ],
                ),
                verticalSpace(15),
                DescriptonForWorker(
                  description: data.description!,
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 100.h,
          left: 150.w,
          child: IdWorkerInfo(
           data: data,
          ),
        ),
        //book_button
         Positioned(
          bottom: 25,
          left: 0,
          right: 0,
          child: BookBuutton(id: data.id??'',),
        ),
      ],
    );
  }
}
