import 'package:flutter/material.dart';

class StarsItem extends StatefulWidget {
  const StarsItem({super.key});

  @override
  State<StarsItem> createState() => _StarsItemState();
}

class _StarsItemState extends State<StarsItem> {
  int rating = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        for (int i = 1; i <= 5; i++)
          GestureDetector(
            onTap: () {
              setState(() {
                rating = i;
              });
            },
            child: Icon(
              i <= rating ? Icons.star : Icons.star_border_outlined,
              color: Colors.yellow,
              size: 30,
            ),
          ),
      ],
    );
  }
}
