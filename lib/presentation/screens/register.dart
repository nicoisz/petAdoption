import 'package:flutter/material.dart';

import '../widgets/bottom_navigation.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      extendBody: true,
      body: Center(
        child: Text('register'),
      ),
      bottomNavigationBar: BottomMenuNavigation(
        indexPage: 1,
      ),
    );
  }
}
