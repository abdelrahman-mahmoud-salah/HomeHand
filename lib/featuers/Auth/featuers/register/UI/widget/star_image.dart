import 'package:flutter/material.dart';

class StarImage extends StatelessWidget {
  const StarImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/stars_login.png',
      color: const Color.fromARGB(255, 11, 160, 240),
    );
  }
}
