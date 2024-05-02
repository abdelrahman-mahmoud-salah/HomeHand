import 'package:flutter/material.dart';

import 'widgets/order_item.dart';

class OrdersScreen extends StatefulWidget {
  const OrdersScreen({Key? key}) : super(key: key);

  @override
  State<OrdersScreen> createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen> {
  bool isWorker = false;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: isWorker ? 2 : 3,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading:
          const Icon(Icons.arrow_back_ios, size: 25, color: Colors.black),
          title: const Text(
            'Orders',
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.black, fontSize: 30),
          ),
          centerTitle: true,
          elevation: 0,
          bottom: TabBar(
            unselectedLabelColor: const Color(0xff0B92F0),
            labelColor: const Color(0xff053B62),
            indicatorColor: const Color(0xff053B62),
            tabs: [
              const Tab(
                  child: Text("Completed",
                      style: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold))),
              const Tab(
                  child: Text("Pending",
                      style: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold))),
              if (!isWorker)
                const Tab(
                    child: Text("Cancelled",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold))),
            ],
          ),
        ),
        body: TabBarView(
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
        ),
      ),
    );
  }
}
