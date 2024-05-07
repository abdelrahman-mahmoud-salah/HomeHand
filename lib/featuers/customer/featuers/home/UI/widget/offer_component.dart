import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:homehand/core/helper/spacing.dart';
import 'package:homehand/core/theming/colors.dart';

class OfferComponent extends StatelessWidget {
  const OfferComponent({required this.offerData, super.key});
  final OfferData offerData;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12.w),
      decoration: BoxDecoration(
        color: ColorsManager.mainBlue, // Blue background color
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(23.w), // Rounded top-right corner
          topLeft: Radius.circular(23.w), // Rounded top-left corner
          bottomLeft: Radius.circular(23.w), // Rounded bottom-left corner
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  offerData.discountPercentage,
                  // Discount percentage from data
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 50.sp, // Reduced font size
                    fontWeight: FontWeight.bold,
                  ),
                ), // Added spacing
                verticalSpace(4), // Added spacing
                Text(
                  offerData.title,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.sp, // Reduced font size
                    fontWeight: FontWeight.bold,
                  ),
                ), // Added spacing
                verticalSpace(4), // Added spacing
                Text(
                  offerData.description,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14.sp, // Reduced font size
                    fontWeight: FontWeight.bold, // Changed to normal weight
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width *
                0.30, // Adjusted image width
            height: MediaQuery.of(context).size.width *
                0.30, // Adjusted image height
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.w),
              child: Image.network(
                offerData.imageUrl, // Image URL from data
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// Class to represent offer data
class OfferData {
  OfferData({
    required this.discountPercentage,
    required this.title,
    required this.description,
    required this.imageUrl,
  });
  final String discountPercentage;
  final String title;
  final String description;
  final String imageUrl;
}
