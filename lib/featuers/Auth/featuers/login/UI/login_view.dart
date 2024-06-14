import 'package:flutter/material.dart';
import 'view/login_boody.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: LoginBoody(),
      ),
    );
  }
}
