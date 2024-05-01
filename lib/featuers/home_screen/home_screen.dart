import 'package:flutter/material.dart';
import 'package:homehand/core/theming/colors.dart';

import '../../core/theming/font_wight_helper.dart';
import 'widgets/category_item.dart';
import 'widgets/page_view.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 8.0),
                  child: ListTile(
                    title: Text(
                      'Welcome 👋',
                      style: TextStyle(
                          fontWeight: FontWeightHelper.bold, fontSize: 25),
                    ),
                    subtitle: Text(
                      'service and safety',
                      style: TextStyle(
                          fontWeight: FontWeightHelper.bold,
                          color: Colors.grey),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.search),
                      filled: true,
                      fillColor: Colors.grey[200],
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                        borderSide: BorderSide.none,
                      ),
                      hintText: 'Search',
                      hintStyle: const TextStyle(
                          fontWeight: FontWeightHelper.bold,
                          color: Color(0xEAA2A2A2)),
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 12, horizontal: 16),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () {
                        // Add your action for "Special Offers" button here
                      },
                      style: TextButton.styleFrom(
                        foregroundColor: ColorsManager.mainBlue,
                      ),
                      child: const Text(
                        'Special Offers',
                        style: TextStyle(
                            fontWeight: FontWeightHelper.bold, fontSize: 17),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        // Add your action for "View all" button here
                      },
                      style: TextButton.styleFrom(
                        foregroundColor: ColorsManager.mainBlue,
                      ),
                      child: const Text(
                        'View all',
                        style: TextStyle(
                            fontWeight: FontWeightHelper.bold, fontSize: 17),
                      ),
                    ),
                  ],
                ),
                MyPageView(),
                Row(
                  children: [
                    TextButton(
                      onPressed: () {
                        // Add your action for "Categories" button here
                      },
                      style: TextButton.styleFrom(
                        foregroundColor: ColorsManager.mainBlue,
                      ),
                      child: const Row(
                        children: [
                          Icon(
                            Icons.list_rounded,
                            color: ColorsManager.mainBlue,
                          ),
                          SizedBox(width: 8),
                          Text(
                            'Categories',
                            style: TextStyle(
                              color: ColorsManager.mainBlue,
                              fontWeight: FontWeightHelper.bold,
                              fontSize: 17,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                GridView.count(
                  physics: const NeverScrollableScrollPhysics(),
                  crossAxisCount: 3,
                  mainAxisSpacing: 16,
                  crossAxisSpacing: 16,
                  shrinkWrap: true,
                  children: const [
                    CategoryItem(
                      iconData: Icons.cleaning_services_rounded,
                      label: 'Cleaning',
                      color: 0xffF0E5FF,
                      iconColor: Color(0xEA63BBFF),
                    ),
                    CategoryItem(
                      iconData: Icons.construction_rounded,
                      label: 'Repair',
                      color: 0xffDEE7FF,
                      iconColor: Color(0xEAA376FF),
                    ),
                    CategoryItem(
                      iconData: Icons.plumbing,
                      label: 'Plumbing',
                      color: 0xffF4ECFF,
                      iconColor: Color(0xEA63BBFF),
                    ),
                    CategoryItem(
                      iconData: Icons.format_paint_rounded,
                      label: 'Painting',
                      color: 0xffDEE7FF,
                      iconColor: Color(0xEAA376FF),
                    ),
                    CategoryItem(
                      iconData: Icons.local_laundry_service_rounded,
                      label: 'Washing',
                      color: 0xffF0E5FF,
                      iconColor: Color(0xEA63BBFF),
                    ),
                    CategoryItem(
                      iconData: Icons.pest_control_rounded,
                      label: 'Sterilization',
                      color: 0xffDEE7FF,
                      iconColor: Color(0xEAA376FF),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
