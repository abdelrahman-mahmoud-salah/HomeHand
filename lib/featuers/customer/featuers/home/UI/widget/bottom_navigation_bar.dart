import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:homehand/featuers/Auth/featuers/login/data/model/login_repo_boody.dart';
import '../../../../../../core/helper/extinstion.dart';
import '../../../../../../core/routes/Routes_App.dart';
import '../../../../../../core/theming/colors.dart';
import '../homepage_screen.dart';
import '../../../orders_screen/UI/orders_screen.dart';

class CurveBar extends StatelessWidget {
  CurveBar({super.key, required this.data});
  final LoginResponse data;
  int index = 1;

  @override
  Widget build(BuildContext context) {
    final items = [
      // ignore: lines_longer_than_80_chars
      IconButton(
        icon: const Icon(Icons.settings, size: 30),
        onPressed: () {
          context.pushNamed(RoutesApp.settingsScreen,arguments: data);
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
        //onTap: (index) => setState(() => this.index = index),
      ),
    );
  }
}
