import 'package:flutter/material.dart';
import 'view/on_boarding_boody.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: OnBoardingBoody(),
      ),
    );
  }
}
