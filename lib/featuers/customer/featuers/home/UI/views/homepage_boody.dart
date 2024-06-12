import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/helper/shared_perefernce.dart';
import '../../../../../../core/helper/spacing.dart';
import '../../../../../../core/theming/colors.dart';
import '../../../../../../core/theming/styels.dart';
import '../widget/Advertisment.dart';
import '../widget/all_category.dart';
import '../widget/search_homepage.dart';

class HomeBody extends StatelessWidget {
  
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    print(CacheHelper().getString('token'));
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
