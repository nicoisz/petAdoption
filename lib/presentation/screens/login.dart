import 'package:flutter/material.dart';

import '../widgets/bottom_navigation.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      extendBody: true,
      body: Center(
        child: Text('Login'),
      ),
    );
  }
}
