import 'package:flutter/material.dart';
import 'package:homehand/core/theming/styels.dart';
import 'package:homehand/featuers/compineed/Accessibilty/UI/widgets/onboarding_boody.dart';

class AccessibiltyView extends StatelessWidget {
  const AccessibiltyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          TextButton(
              onPressed: () {},
              child: Text(
                "Skip",
                style: TextStyles.font14GrayRegular.copyWith(fontSize: 20),
              ))
        ],
      ),
      body: const OnboardingBoody(),
    );
  }
}
