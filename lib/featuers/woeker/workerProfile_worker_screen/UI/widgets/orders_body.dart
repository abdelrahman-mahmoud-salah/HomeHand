import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:homehand/core/helper/loading_shimmer.dart';
import 'package:homehand/core/widget/empty_screen.dart';
import 'package:homehand/featuers/woeker/workerProfile_worker_screen/UI/widgets/order_item.dart';
import 'package:homehand/featuers/woeker/workerProfile_worker_screen/logic/cubit/getallorderstoworker_cubit.dart';
import 'package:homehand/featuers/woeker/workerProfile_worker_screen/logic/cubit/getallorderstoworker_state.dart';

class OrdersView extends StatelessWidget {
  const OrdersView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetallOrderstoWorkerCubit, GetallorderstoworkerState>(
      builder: (context, state) {
        return state.when(
          initial: () {
            return SizedBox.shrink();
          },
          loading: () {
            return LoadingOrders();
          },
          emty: () {
            return const TabBarView(children: [
              EmptyScreen(),
              EmptyScreen(),
              EmptyScreen(),
            ]);
          },
          loaded: (orders) {

            return TabBarView(
              children: [
                TabBarView(
                  children: [
                    ListView.builder(
                      itemCount: orders.workerList.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: OrderItemWorkwe(workerList: orders.workerList[index],),
                        );
                      },
                    ),
                    ListView.builder(
                      itemCount: 6,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                           child: OrderItemWorkwe(workerList: orders.workerList[index],),
                        );
                      },
                    ),
                    ListView.builder(
                      itemCount: 6,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                           child: OrderItemWorkwe(workerList: orders.workerList[index],),
                        );
                      },
                    ),
                  ],
                )
              ],
            );
          },
          error: (errorModel) {
            return TabBarView(children: [
              const Text("Error"),
              const Text("Error"),
              const Text("Error"),
            ]);
          },
        );
      },
    );
  }
}

class LoadingOrders extends StatelessWidget {
  const LoadingOrders({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      children: [
        TabBarView(
          children: [
            ListView.builder(
              itemCount: 6,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: LoadingShimmer(
                    width: 400.w,
                    height: 325.h,
                  ),
                );
              },
            ),
            ListView.builder(
              itemCount: 6,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: LoadingShimmer(
                    width: 400.w,
                    height: 325.h,
                  ),
                );
              },
            ),
            ListView.builder(
              itemCount: 6,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: LoadingShimmer(
                    width: 400.w,
                    height: 325.h,
                  ),
                );
              },
            ),
          ],
        )
      ],
    );
  }
}
