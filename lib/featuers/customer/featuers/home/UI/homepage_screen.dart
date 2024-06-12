import 'package:flutter/material.dart';
import 'views/homepage_boody.dart';
import 'widget/bottom_navigation_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        bottomNavigationBar: CurveBar(),
        body: HomeBody(),
      ),
    );
  }
}
