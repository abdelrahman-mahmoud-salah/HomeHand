import 'package:flutter/material.dart';

class CustomColumn extends StatelessWidget {
  final String text;
  final double textFieldHeight;

  const CustomColumn({
    Key? key,
    required this.text,
    required this.textFieldHeight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.blue,
            fontSize: 16,
          ),
        ),
        const SizedBox(height: 10),
        Container(
          height: textFieldHeight,
          width: 335, // Set width to fill the available space
          padding: const EdgeInsets.symmetric(horizontal: 10), // Add padding for better appearance
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: Colors.grey), // Use Border.all for border color
          ),
          child: const TextField(
            decoration: InputDecoration(
              border: InputBorder.none, // Remove border from TextField
            ),
          ),
        ),
        const SizedBox(height:20,)
      ],
    );
  }
}
