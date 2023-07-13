import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/slide-1.png',
                  height: 300,
                ),
                const SizedBox(
                  height: 50,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Elije tu mascota',
                      style:
                          TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                    ),
                    Icon(
                      Icons.pets,
                      size: 18.0,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text("Encuentra tu mejor futuro compañero")
              ],
            ),
          ),
          backgroundColor: const Color(0xFFb1e0da),
          floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
          floatingActionButton: GestureDetector(
            onTap: () {},
            child: Container(
              width: 200,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.white,
              ),
              child: Row(mainAxisAlignment: MainAxisAlignment.center,children:[ Icon( Icons.pets),SizedBox(width: 5,), Text('GestureDetector Button')]),
            ),
          )),
    );
  }
}
