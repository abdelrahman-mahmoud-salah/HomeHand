import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/helper/spacing.dart';
import '../../../../../../core/theming/colors.dart';

class SearchingAndFilter extends StatelessWidget {
  const SearchingAndFilter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          flex: 7,
          child: SizedBox(
            height: 50.h,
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search),
                filled: true,
                fillColor: Colors.grey[200], // Gray background color
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
                hintText: 'Search',
                hintStyle: const TextStyle(),
              ),
            ),
          ),
        ),
        horizentalSpace(8), // Fixed typo in method name
        Expanded(
          flex: 1,
          child: Container(
            width: 50.w,
            height: 50.h,
            decoration: BoxDecoration(
              color: ColorsManager.mainBlue,
              borderRadius: BorderRadius.circular(10),
            ),
            child: IconButton(
              onPressed: () {},
              color: Colors.white,
              icon: const Icon(
                Icons.equalizer_rounded,
                size: 30,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
