import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:homehand/core/helper/spacing.dart';
import 'package:homehand/core/theming/colors.dart';
import 'package:homehand/core/theming/styels.dart';
import 'package:homehand/featuers/customer/featuers/home/UI/widget/Advertisment.dart';
import 'package:homehand/featuers/customer/featuers/home/UI/widget/addvertisment_pageview.dart';
import 'package:homehand/featuers/customer/featuers/home/UI/widget/all_category.dart';
import 'package:homehand/featuers/customer/featuers/home/UI/widget/search_homepage.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 20.h,
          horizontal: 15.w,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ListTile(
              title: Text(
                'Welcome 👋',
                style: TextStyles.font24BlackBold,
              ),
              subtitle: const Text(
                'service and safety',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
            ),
            verticalSpace(16),
            const SearchHomePage(),
            verticalSpace(20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Special Offers',
                  style: TextStyles.font14BlueSemiBold.copyWith(fontSize: 22),
                ),
                Text(
                  'View all',
                  style: TextStyles.font14BlueSemiBold.copyWith(fontSize: 22),
                ),
              ],
            ),
            verticalSpace(10),
            const AdvertismentHomePage(),
            Row(
              children: [
                const Icon(
                  Icons.list_rounded,
                  color: ColorsManager.darkBlue,
                ),
                horizentalSpace(8),
                Text(
                  'Categories',
                  style: TextStyles.font14BlueSemiBold.copyWith(fontSize: 22),
                ),
              ],
            ),
            verticalSpace(10),
            const AllCategory(),
          ],
        ),
      ),
    );
  }
}
