import 'package:flutter/material.dart';

import 'widgets/details_item.dart';


class ServiceDetails extends StatefulWidget {
  const ServiceDetails({Key? key}) : super(key: key);

  @override
  State<ServiceDetails> createState() => _ServiceDetailsState();
}

class _ServiceDetailsState extends State<ServiceDetails> {
  bool isCash = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 100,
          elevation: 0,
          leading: const Icon(Icons.arrow_back_ios, size: 25, color: Colors.black),
          title: const Text(
            'Service Details',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'About this service',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.blue,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      width: double.infinity,
                      alignment: Alignment.center,
                      child: const Text(
                        'Book your professional handyman service for any of your home needs. This service is charged at \$60 per hour, plus any parts if needed.',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Color(0xff9D9D9D),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                const CustomColumn(
                  text: 'Service Description',
                  textFieldHeight: 120,
                ),
                const CustomColumn(
                  text: 'Date',
                  textFieldHeight: 80,
                ),
                const CustomColumn(
                  text: 'Address',
                  textFieldHeight: 50,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Payment',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              isCash = true;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            fixedSize: const Size(110, 35),
                            foregroundColor: Colors.white,
                            backgroundColor: isCash ? const Color(0xff0476C6) : Colors.grey,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                            elevation: 5,
                          ),
                          child: const Text(
                            'Cash',
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                        ),
                        const SizedBox(width: 20),
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              isCash = false;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            fixedSize: const Size(110, 35),
                            foregroundColor: Colors.white,
                            backgroundColor: isCash ? Colors.grey : const Color(0xff0476C6),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                            elevation: 8,
                          ),
                          child: const Text(
                            'Credit',
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                Center(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(340, 75),
                      foregroundColor:Colors.white,
                      backgroundColor: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(45),
                      ),
                    ),
                    child: const Text(
                      "Submit",
                      style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
