import 'package:flutter/material.dart';

import '../widgets/bottom_navigation.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      extendBody: true,
      body: Center(
        child: Text('Profile'),
      ),
      bottomNavigationBar: BottomMenuNavigation(
        indexPage: 2,
      ),
    );
  }
}
