import 'package:flutter/material.dart';

class CircleShape extends StatelessWidget {
  const CircleShape({
    super.key,
    this.backgroundColor,
  });
  final Color? backgroundColor;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      maxRadius: 50,
      backgroundColor: backgroundColor,
    );
  }
}
