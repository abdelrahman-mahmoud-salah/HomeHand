import 'package:flutter/material.dart';

import 'widgets/service_card.dart';

class WorkerScreen extends StatelessWidget {
  const WorkerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: const Icon(Icons.arrow_back_ios, size: 24, color: Colors.black),
        title: const Text(
          'Profile',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue, fontSize: 24),
        ),
        centerTitle: true,
        elevation: 0,
        toolbarHeight: 100, // Increased app bar height
      ),
      bottomSheet: Container(
        width: double.infinity,
        height: 80,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Total \$ 800',
                  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue, fontSize: 20),
                ),
                Text(
                  '1 Service Selected',
                  style: TextStyle(color: Colors.black87, fontSize: 16),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.blue,
                fixedSize: const Size(150, 50),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              ),
              child: const Text(
                "Continue",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 250,
            margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.7),
                  spreadRadius: 1,
                  blurRadius: 1,
                  offset: const Offset(0, 3),
                ),
              ],
              color: Colors.white,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(Icons.star, color: Colors.yellow, size: 20),
                    Text(
                      "4.4",
                      style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xff053B62)),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: 75,
                          height: 75,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                            border: Border.all(color: Colors.blue, width: 2),
                          ),
                          child: Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.grey[100],
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(80),
                              child: Image.network(
                                'https://cdn-icons-png.flaticon.com/512/147/147129.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Ram Samy',
                            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue, fontSize: 25),
                          ),
                          Text(
                            'Driver',
                            style: TextStyle(color: Colors.black87, fontSize: 18),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                const Divider(color: Colors.black26, thickness: 1),
                const SizedBox(height: 8),
                const Row(
                  children: [
                    Icon(Icons.check_box, color: Color(0xff053B62), size: 25),
                    SizedBox(width: 5),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Job Completed',
                          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue, fontSize: 15),
                        ),
                        Text(
                          '105',
                          style: TextStyle(color: Colors.black87, fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Spacer(),
                    Icon(Icons.account_circle, color: Color(0xff053B62), size: 25),
                    SizedBox(width: 5),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Working Since',
                          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue, fontSize: 15),
                        ),
                        Text(
                          '2022 Jun',
                          style: TextStyle(color: Colors.black87, fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                const Row(
                  children: [
                    Icon(Icons.verified, color: Color(0xff053B62), size: 25),
                    SizedBox(width: 5),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'NID Verified',
                          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue, fontSize: 15),
                        ),
                        Text(
                          '2341*********',
                          style: TextStyle(color: Colors.black87, fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Spacer(),
                    Icon(Icons.timelapse, color: Color(0xff053B62), size: 25),
                    SizedBox(width: 5),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Response Time',
                          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue, fontSize: 14),
                        ),
                        Text(
                          '1 Hr',
                          style: TextStyle(color: Colors.black87, fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
          const Expanded(
            child: DefaultTabController(
              length: 3,
              child: Column(
                children: <Widget>[
                  TabBar(
                    unselectedLabelColor: Colors.blue,
                    labelColor: Color(0xff053B62),
                    indicatorColor: Color(0xff053B62),
                    tabs: [
                      Tab(child: Text("About", style: TextStyle(fontSize: 20))),
                      Tab(child: Text("Services", style: TextStyle(fontSize: 20))),
                      Tab(child: Text("Review", style: TextStyle(fontSize: 20))),
                    ],
                  ),
                  Expanded(
                    child: TabBarView(
                      children: [
                        Center(
                          child: Text('About Content'),
                        ),
                        SingleChildScrollView(
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                ServiceCard(),
                                ServiceItem(),
                                ServiceItem(),
                                ServiceItem(),
                                ServiceItem(),
                                ServiceItem(),
                              ],
                            ),
                          ),
                        ),
                        Center(
                          child: Text('Review Content'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
