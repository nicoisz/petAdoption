import 'package:flutter/material.dart';
import 'package:petadoption/models/models.dart';
import 'package:petadoption/presentation/screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'Home';

  static final menuOptions = <MenuOptions>[
    MenuOptions(
        route: 'home', icon: Icons.home, name: 'home', screen: HomeScreen()),
    MenuOptions(
        route: 'splash',
        icon: Icons.build,
        name: 'splash',
        screen: const SplashScreen()),
    MenuOptions(
        route: 'profile',
        icon: Icons.person_2,
        name: 'profile',
        screen: const ProfileScreen()),
    MenuOptions(
        route: 'detail',
        icon: Icons.person_2,
        name: 'detail',
        screen: const DetailScreen(
          pets: {},
        )),
    MenuOptions(
        route: 'login',
        icon: Icons.person_2,
        name: 'login',
        screen: const LoginScreen()),
    MenuOptions(
        route: 'register',
        icon: Icons.person_2,
        name: 'register',
        screen: const RegisterScreen())
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
    'home': (BuildContext context) => HomeScreen(),
    'profile': (BuildContext context) => const ProfileScreen(),
    'detail': (BuildContext context) => const DetailScreen(
          pets: {},
        ),
    'login': (BuildContext context) => const LoginScreen(),
    'register': (BuildContext context) => const RegisterScreen(),
  };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => HomeScreen(),
    );
  }
}
