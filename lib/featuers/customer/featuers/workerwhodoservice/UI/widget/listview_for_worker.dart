import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/helper/extinstion.dart';
import '../../../../../../core/helper/loading_shimmer.dart';
import '../../../../../../core/helper/shared_perefernce.dart';
import '../../../../../../core/routes/Routes_App.dart';
import '../../../../../../core/widget/empty_screen.dart';
import 'Category_person_item.dart';
import '../../bloc/cubit/getallworker_cubit.dart';
import '../../bloc/cubit/getallworker_state.dart';
import '../../data/model/Info_about_who_work_service_model.dart';

class AllWorkerView extends StatelessWidget {
  AllWorkerView({required this.data});
  final List<GetAllWorkerinfoModel> data;
  @override
  Widget build(BuildContext context) {
    List<GetAllWorkerinfoModel> newdata = modifydata(context, data);
    if (newdata.isNotEmpty) {
      return GridView.builder(
        shrinkWrap: true, // This will solve the issue
        physics: NeverScrollableScrollPhysics(),
        itemCount: newdata.length,
        itemBuilder: (context, index) {
          print(newdata[index]);
          return ItemContent(
              onTap: () {
                print(newdata[index]);
                context.pushNamed(
                  RoutesApp.workerProfileUserScreen,
                  arguments: newdata[index],
                );
              },
              image: newdata[index].Id_Image!,
              rate: newdata[index].rating.toString(),
              serviceName: newdata[index].specialization.toString(),
              workerName: newdata[index].worker!.firstName);
        },
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 10,
        ),
      );
    } else {
      return EmptyScreen(
        title: "no data found",
      );
    }
  }
}

class WorkerShimmer extends StatelessWidget {
  const WorkerShimmer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true, // This will solve the issue
      physics: NeverScrollableScrollPhysics(),

      itemCount: 8,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 2 / 3,
        crossAxisSpacing: 16,
        mainAxisSpacing: 10,
      ),
      itemBuilder: (context, index) {
        return LoadingShimmer(
          height: 250.h,
          width: 165.w,
        );
      },
    );
  }
}

List<GetAllWorkerinfoModel> modifydata(
    BuildContext context, List<GetAllWorkerinfoModel> data) {
  List<GetAllWorkerinfoModel> newdata = [];
  String id = CacheHelper().getString('Specialization');
  for (int i = 0; i < data.length; i++) {
    if (data[i].specialization == id) {
      newdata.add(data[i]);
    }
  }
  print(newdata);
  return newdata;
}
