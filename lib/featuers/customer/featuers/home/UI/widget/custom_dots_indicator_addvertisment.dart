import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import '../../../../../../core/theming/colors.dart';

// ignore: must_be_immutable
class CustomDotsIndicatorAddvertisment extends StatelessWidget {
  CustomDotsIndicatorAddvertisment({
    @required this.DotIndex,
    @required this.onTap,
    super.key,
  });
  final int? DotIndex;
  void Function(int)? onTap;
  @override
  Widget build(BuildContext context) {
    return DotsIndicator(
      onTap: onTap,
      position: DotIndex!,
      dotsCount: 3,
      decorator: DotsDecorator(
          activeSize: const Size(20, 10),
          color: Colors.transparent,
          activeColor: ColorsManager.mainBlue,
          activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
            side: const BorderSide(
              color: ColorsManager.mainBlue,
            ),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
            side: const BorderSide(
              color: ColorsManager.mainBlue,
            ),
          )),
    );
  }
}
