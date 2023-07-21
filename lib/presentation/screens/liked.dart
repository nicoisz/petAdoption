import 'package:flutter/material.dart';

import '../widgets/bottom_navigation.dart';

class LikedScreen extends StatelessWidget {
  const LikedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      extendBody: true,
      body: Center(
        child: Text('Liked'),
      ),
      bottomNavigationBar: BottomMenuNavigation(
        indexPage: 1,
      ),
    );
  }
}
