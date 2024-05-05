import 'package:flutter/material.dart';
import 'package:homehand/featuers/Auth/featuers/login/UI/view/login_boody.dart';

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
