import 'package:flutter/material.dart';
import 'package:homehand/core/helper/extinstion.dart';
import 'package:homehand/core/routes/Routes_App.dart';
import 'package:homehand/core/theming/colors.dart';
import 'package:homehand/featuers/customer/featuers/home/UI/widget/category_item.dart';

class AllCategory extends StatelessWidget {
  const AllCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 16,
        crossAxisSpacing: 16,
      ),
      shrinkWrap: true,
      itemCount: 6,
      itemBuilder: (BuildContext context, int index) {
        return _buildCategoryItem(context, index);
      },
    );
  }

  Widget _buildCategoryItem(BuildContext contex, int index) {
    IconData iconData;
    String label;
    Color color;
    Color iconColor;
    Color? TextColor;
    void Function()? onTap;

    switch (index) {
      case 0:
        iconData = Icons.cleaning_services_rounded;
        label = 'Cleaning';
        color = Color.fromARGB(255, 176, 220, 251);
        iconColor = Colors.white;
        onTap = () {
          contex.pushNamed(RoutesApp.workersWhoDoService);
        };
        ;
      case 1:
        iconData = Icons.construction_rounded;
        label = 'Repair';
        color = ColorsManager.lighterGray;
        iconColor = Color.fromARGB(255, 65, 162, 232);
      case 2:
        iconData = Icons.plumbing;
        label = 'Plumbing';
        color = Color.fromARGB(255, 176, 220, 251);
        iconColor = Colors.white;
        ;
      case 3:
        iconData = Icons.format_paint_rounded;
        label = 'Painting';
        color = ColorsManager.lighterGray;
        iconColor = Color.fromARGB(255, 65, 162, 232);
        ;
      case 4:
        iconData = Icons.local_laundry_service_rounded;
        label = 'Washing';
        color = Color.fromARGB(255, 176, 220, 251);
        iconColor = Colors.white;

      case 5:
        iconData = Icons.pest_control_rounded;
        label = 'Sterilization';
        color = ColorsManager.lighterGray;
        iconColor = Color.fromARGB(255, 65, 162, 232);
        ;
      default:
        throw Exception('Invalid index: $index');
    }

    return CategoryItem(
      iconData: iconData,
      label: label,
      color: color,
      iconColor: iconColor,
      colorText: TextColor,
      onTap: onTap,
    );
  }
}
