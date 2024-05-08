import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:homehand/core/helper/extinstion.dart';
import 'package:homehand/core/routes/Routes_App.dart';
import 'package:homehand/core/theming/colors.dart';
import 'package:homehand/featuers/customer/featuers/home/UI/homepage_screen.dart';
import 'package:homehand/featuers/customer/featuers/orders_screen/UI/orders_screen.dart';

class CurveBar extends StatefulWidget {
  const CurveBar({super.key});

  @override
  State<CurveBar> createState() => _CurveBarState();
}

class _CurveBarState extends State<CurveBar> {
  int index = 1;

  @override
  Widget build(BuildContext context) {
    final items = [
      // ignore: lines_longer_than_80_chars
      IconButton(
        icon: const Icon(Icons.settings, size: 30),
        onPressed: () {
          context.pushNamed(RoutesApp.settingsScreen);
        },
      ),
      IconButton(
        icon: const Icon(Icons.home_outlined, size: 30),
        onPressed: () {},
      ),
      IconButton(
        icon: const Icon(Icons.shopping_cart, size: 30),
        onPressed: () {
          context.pushNamed(RoutesApp.allOrderSubmited);
        },
      ),
    ];
    return Theme(
      // this theme is for changing icon colors.
      data: Theme.of(context).copyWith(
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
      ),
      child: CurvedNavigationBar(
        // navigationBar colors
        color: ColorsManager.mainBlue,
        // selected times colors
        buttonBackgroundColor: ColorsManager.mainBlue,
        backgroundColor: Colors.transparent.withOpacity(0),
        items: items,
        index: index,
        onTap: (index) => setState(() => this.index = index),
      ),
    );
  }
}
