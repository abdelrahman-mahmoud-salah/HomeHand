import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:homehand/core/animation/animation_todo.dart';
import 'package:homehand/core/routes/Routes_App.dart';

import 'package:homehand/core/theming/styels.dart';

class TextHaveAccount extends StatelessWidget {
  const TextHaveAccount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomFadeInUp(
      duration: 900,
      child: RichText(
          text: TextSpan(children: [
        const TextSpan(
            text: "      if you don't have an account?   ",
            style: TextStyle(fontSize: 13, color: Colors.black)),
        TextSpan(
            recognizer: TapGestureRecognizer()
              ..onTap = () => Navigator.of(context).pushNamed(RoutesApp.signUp),
            text: "   Sign up",
            style: TextStyles.font14BlueSemiBold),
      ])),
    );
  }
}
