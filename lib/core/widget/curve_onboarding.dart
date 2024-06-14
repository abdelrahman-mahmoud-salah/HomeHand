import 'package:flutter/material.dart';
import 'dimension_curve.dart';

class CurveOnBoarding extends StatefulWidget {
  CurveOnBoarding({super.key});

  @override
  State<CurveOnBoarding> createState() => _CurveOnBoardingState();
}

class _CurveOnBoardingState extends State<CurveOnBoarding> {
  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size(500, 1000),
      child: Transform.flip(
        flipX: true,
        child: ClipPath(
          clipper: Wave1(),
          child: Column(
            children: [
              Container(
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        colors: [
                      Color(0xff0A8ABF),
                      Color.fromARGB(255, 1, 120, 206),
                    ],
                        stops: [
                      0,
                      10,
                    ],
                        begin: Alignment.bottomRight,
                        end: Alignment.topCenter,
                        transform: GradientRotation(1))),
                height: 400,
                width: double.infinity,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
