import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:homehand/core/helper/empty_screen.dart';
import 'package:homehand/core/helper/loading_shimmer.dart';
import 'package:homehand/featuers/customer/featuers/orders_screen/logic/get_orders_cubit.dart';
import 'package:homehand/featuers/customer/featuers/orders_screen/logic/get_orders_state.dart';

import '../widgets/order_item.dart';

class OrdersBody extends StatelessWidget {

  OrdersBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetUOrdersCubit, GetUOrdersState>(
        builder: (context, state) {
      return state.when(loading: () {
        return TabBarView(
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
              itemCount:6,
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
        );
      }, success: (data) {
        return TabBarView(
          children: [
            ListView.builder(
              itemCount: context.read<GetUOrdersCubit>().pending.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: OrderItem(
                    Orders: context.read<GetUOrdersCubit>().pending[index],
                  ),
                );
              },
            ),
            ListView.builder(
              itemCount: context.read<GetUOrdersCubit>().complete.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: OrderItem(
                    Orders: context.read<GetUOrdersCubit>().complete[index],
                  ),
                );
              },
            ),
            ListView.builder(
              itemCount: context.read<GetUOrdersCubit>().canceling.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: OrderItem(
                    Orders: context.read<GetUOrdersCubit>().canceling[index],
                  ),
                );
              },
            ),
          ],
        );
      }, error: (msg) {
        return Center(
          child: Text(msg),
        );
      }, empty: () {
        return const TabBarView(children: [
          EmptyScreen(),
          EmptyScreen(),
          EmptyScreen(),
        ]);
      });
    });
  }
}
