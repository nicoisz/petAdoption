import 'package:flutter/material.dart';
import 'package:petadoption/presentation/screens/home.dart';
import 'package:petadoption/presentation/screens/splash.dart';
import 'package:petadoption/router/router.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        // home: const Listview2Screen(),
        initialRoute: 'splash',
        routes: AppRoutes.routes,
        onGenerateRoute: AppRoutes.onGenerateRoute);
  
  }
}
