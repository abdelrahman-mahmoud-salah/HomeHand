import 'package:flutter/material.dart';

import '../../../core/theming/colors.dart';
import '../../../core/theming/font_wight_helper.dart';

class OfferComponent extends StatelessWidget {
  const OfferComponent({Key? key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(3),
      padding: const EdgeInsets.all(7),
      decoration: const BoxDecoration(
        color: ColorsManager.mainBlue, // Blue background color
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(23.0), // Rounded top-right corner
          topLeft: Radius.circular(23.0), // Rounded top-left corner
          bottomLeft: Radius.circular(23.0), // Rounded bottom-left corner
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 8.0, left: 8.0),
                  child: Text(
                    "25%", // Corrected text
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 60, // Reduced font size
                      fontWeight: FontWeightHelper.bold,
                    ),
                  ),
                ),
                // Added spacing
                Text(
                  'Special Offers',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20, // Reduced font size
                    fontWeight: FontWeightHelper.bold,
                  ),
                ), // Added spacing
                Text(
                  'Get a discount on every order!', // Updated text
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15, // Reduced font size
                    fontWeight:
                        FontWeightHelper.bold, // Changed to normal weight
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 10),
          SizedBox(
            width: 120, // Reduced image width
            height: 120, // Reduced image height
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                'https://static.vecteezy.com/system/resources/previews/035/981/226/non_2x/ai-generated-male-construction-worker-with-helmet-isolated-on-transparent-background-free-png.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
