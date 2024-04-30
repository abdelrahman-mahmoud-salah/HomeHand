import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final IconData iconData;
  final String label;
  final int color;
  final Color? iconColor;

  const CategoryItem({
    required this.iconData,
    required this.label,
    required this.color,
    this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigate to another screen here
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 3.0),
        child: Container(
          width: MediaQuery.of(context).size.width * 2 / 5,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color(color),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.35),
                blurRadius: 1,
                offset: const Offset(0, 5),
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                iconData,
                size: 50,
                color: iconColor ?? Colors.black,
              ),
              const SizedBox(height: 8),
              Text(
                label,
                style: const TextStyle(
                  color: Color(0xEA818181),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
