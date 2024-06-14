import 'package:flutter/material.dart';
import 'package:homehand/featuers/Auth/featuers/login/data/model/login_repo_boody.dart';
import 'views/homepage_boody.dart';
import 'widget/bottom_navigation_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key, required this.data});
  final LoginResponse data;
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        bottomNavigationBar: CurveBar(data: data,),
        body: const HomeBody(),
      ),
    );
  }
}
