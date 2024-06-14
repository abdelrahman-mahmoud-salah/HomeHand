import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/helper/spacing.dart';
import '../../../../../../core/widget/empty_screen.dart';
import '../../bloc/cubit/getallworker_cubit.dart';
import '../../bloc/cubit/getallworker_state.dart';
import '../widget/app_bar_worker_info.dart';
import '../widget/form_searchingandfilter_for%20_worker.dart';
import '../widget/listview_for_worker.dart';

class WorkersWhoDoServiceBoody extends StatelessWidget {
  const WorkersWhoDoServiceBoody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0.w),
      child: Column(
        children: [
          AppBarWorkerInfo(),
          verticalSpace(8),
          SearchingAndFilter(),
          verticalSpace(8),
          Expanded(
            child: CustomScrollView(
              scrollBehavior: ScrollBehavior(),
              physics: ClampingScrollPhysics(),
              slivers: [
                SliverToBoxAdapter(
                  child: BlocBuilder<GetallworkerCubit, Getallworker>(
                    builder: (context, state) {
                      return state.when(
                        loading: () {
                          return const WorkerShimmer();
                        },
                        success: (productList) {
                          if (productList.workerList.isEmpty) {
                            return EmptyScreen(
                              title: 'no found data',
                            );
                          } else {
                            return AllWorkerView(
                              data: productList.workerList,
                            );
                          }
                        },
                        empty: () {
                          return EmptyScreen(
                            title: 'no found data',
                          );
                        },
                        error: (error) {
                          return Center(
                            child: Text(error),
                          );
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
