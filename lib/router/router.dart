import 'package:flutter/material.dart';
import 'package:petadoption/models/models.dart';
import 'package:petadoption/presentation/screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'Home';

  static final menuOptions = <MenuOptions>[
    MenuOptions(
        route: 'home',
        icon: Icons.home,
        name: 'home',
        screen: HomeScreen()),
    MenuOptions(
        route: 'splash',
        icon: Icons.build,
        name: 'splash',
        screen: const SplashScreen())
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    for (var option in menuOptions) {
      appRoutes.addAll({option.name: (BuildContext context) => option.screen});
    }

    return appRoutes;
  }

  static Map<String, Widget Function(BuildContext)> routes = {
    'splash': (BuildContext context) => const SplashScreen(),
    'home': (BuildContext context) =>  HomeScreen(),
  };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) =>  HomeScreen(),
    );
  }
}