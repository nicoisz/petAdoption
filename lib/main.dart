import 'package:flutter/material.dart';
import 'package:petadoption/router/router.dart';

Future<void> main() async {
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
        theme: ThemeData(
          scaffoldBackgroundColor: const Color.fromARGB(255, 255, 255, 255),
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        routes: AppRoutes.routes,
        onGenerateRoute: AppRoutes.onGenerateRoute);
  }
}
