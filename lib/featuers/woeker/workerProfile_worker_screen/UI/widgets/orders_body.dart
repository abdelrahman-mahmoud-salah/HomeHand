import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:homehand/core/di/dependace_injection.dart';
import 'package:homehand/core/helper/loading_shimmer.dart';
import 'package:homehand/core/widget/empty_screen.dart';
import 'package:homehand/featuers/woeker/workerProfile_worker_screen/UI/widgets/order_item.dart';
import 'package:homehand/featuers/woeker/workerProfile_worker_screen/logic/State_cubit/state_order_cubit.dart';
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
            return const TabBarView(children: [
              SizedBox.shrink(),
              SizedBox.shrink(),
              SizedBox.shrink(),
            ]);
          },
          loading: () {
            return const TabBarView(children: [
              LoadingOrders(),
              LoadingOrders(),
              LoadingOrders(),
            ]);
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
                ListView.builder(
                  itemCount:
                      context.read<GetallOrderstoWorkerCubit>().pending.length,
                  itemBuilder: (context, index) {
                    return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: BlocProvider(
                          create: (context) =>
                              getIt<stateOrderCubit>(),
                          child: OrderItemWorkwe(
                            Orders: context
                                .read<GetallOrderstoWorkerCubit>()
                                .pending[index],
                          ),
                        ));
                  },
                ),
                ListView.builder(
                  itemCount:
                      context.read<GetallOrderstoWorkerCubit>().complete.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: OrderItemWorkwe(
                        Orders: context
                            .read<GetallOrderstoWorkerCubit>()
                            .complete[index],
                      ),
                    );
                  },
                ),
                ListView.builder(
                  itemCount: context
                      .read<GetallOrderstoWorkerCubit>()
                      .canceling
                      .length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: OrderItemWorkwe(
                        Orders: context
                            .read<GetallOrderstoWorkerCubit>()
                            .canceling[index],
                      ),
                    );
                  },
                ),
              ],
            );
          },
          error: (errorModel) {
            return const TabBarView(children: [
              Text("Error"),
              Text("Error"),
              Text("Error"),
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
