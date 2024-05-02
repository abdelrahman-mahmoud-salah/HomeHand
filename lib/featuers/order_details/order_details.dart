import 'package:flutter/material.dart';

import 'widgets/custom_stepper.dart';

class OrderDetails extends StatefulWidget {
  const OrderDetails({Key? key}) : super(key: key);

  @override
  State<OrderDetails> createState() => _OrderDetailsState();
}

class _OrderDetailsState extends State<OrderDetails> {
  bool isWorker = false;
  bool acceptClicked = false;
  bool rejectClicked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 100,
        leading: const Icon(
          Icons.arrow_back_ios,
          size: 25,
          color: Colors.black87,
        ),
        title: const Text(
          'Order Details',
          style: TextStyle(
              color: Colors.black87, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Center(
              child: Text(
                'Order Id 5253',
                style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
          ),
          const ListTile(
            title: Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.list_alt,
                    color: Colors.blue,
                    size: 25,
                  ),
                ),
                Text(
                  'Order Details',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ],
            ),
            subtitle: Padding(
              padding: EdgeInsets.only(left: 28.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Clean For Full House',
                    style: TextStyle(color: Colors.black87),
                  ),
                  Text(
                    "A clean for all house area: 200m",
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
                  )
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 15.0),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.location_on_outlined,
                    color: Colors.blue,
                    size: 25,
                  ),
                ),
                Text(
                  'flat7,elmsalla,street15,fayoum',
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 15.0),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.access_time,
                    color: Colors.blue,
                    size: 25,
                  ),
                ),
                Text(
                  '08:30 Am, 22may, 2023',
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
                ),
              ],
            ),
          ),
          if (!isWorker)
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 100, vertical: 20),
              child: CustomStepper(currentIndex: 0),
            ),
          const ListTile(
            title: Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.list_alt,
                    color: Colors.blue,
                    size: 25,
                  ),
                ),
                Text(
                  'Price Details',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ],
            ),
            subtitle: Padding(
              padding: EdgeInsets.only(left: 28.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Clean For Full House        \$800",
                    style: TextStyle(color: Colors.black87, fontSize: 12),
                  ),
                  Text(
                    "for Worker                          \$720",
                    style: TextStyle(color: Colors.black87, fontSize: 12),
                  ),
                  Text(
                    "For ServicesApp                \$80",
                    style: TextStyle(color: Colors.black87, fontSize: 12),
                  ),
                  Text(
                    "Paid With                            Cash",
                    style: TextStyle(color: Colors.black87, fontSize: 12),
                  ),
                ],
              ),
            ),
          ),
          const ListTile(
            title: Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.sticky_note_2_outlined,
                    color: Colors.blue,
                    size: 25,
                  ),
                ),
                Text(
                  'Task Notes',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ],
            ),
            subtitle: Padding(
              padding: EdgeInsets.only(left: 26.0),
              child: Text(
                  'Book your professional handyman service for any of your home needs. This service is charged at \$60/ per hour, plus any parts if needed.'),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          if (isWorker)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {
                      setState(() {
                        acceptClicked = true;
                        rejectClicked = false;
                      });
                    },
                    style: ButtonStyle(
                      backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.blue),
                      foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                      fixedSize:
                      MaterialStateProperty.all<Size>(const Size(165, 45)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30),
                      child: Text(
                        'Accept',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        rejectClicked = true;
                        acceptClicked = false;
                      });
                    },
                    style: ButtonStyle(
                      backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.red),
                      foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                      fixedSize:
                      MaterialStateProperty.all<Size>(const Size(165, 45)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30),
                      child: Text(
                        'Reject',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      ),
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
