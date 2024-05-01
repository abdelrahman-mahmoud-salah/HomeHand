import 'package:flutter/material.dart';

import '../../../core/theming/font_wight_helper.dart';

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
        padding: const EdgeInsets.symmetric(
          vertical: 5.0,
        ),
        child: Container(
          width: 110,
          height: 90,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
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
                  fontWeight: FontWeightHelper.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
