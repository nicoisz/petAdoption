import 'package:flutter/material.dart';

import '../widgets/bottom_navigation.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      extendBody: true,
      body: Center(
        child: Text('Detail'),
      ),
      bottomNavigationBar: BottomMenuNavigation(
        indexPage: 2,
      ),
    );
  }
}
