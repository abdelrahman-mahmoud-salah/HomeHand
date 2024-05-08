import 'package:flutter/material.dart';

import '../widgets/order_item.dart';

class OrdersBody extends StatelessWidget {
  bool isWorker = false;
   OrdersBody({super.key});

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      children: [
        ListView.builder(
          itemCount: 6,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: OrderItem(),
            );
          },
        ),
        const Center(child: Text('No pending Orders')),
        if (!isWorker) const Center(child: Text('No Cancelled Orders')),
      ],
    );
  }
}
