
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
                    style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
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
        floatingActionButton: ElevatedButton.icon(
          onPressed: () {
            print("You pressed Icon Elevated Button");
          },
          icon: Icon(Icons.save, color: Colors.black,), //icon data for elevated button
          label: Text("Elevated Button with Icon", style: TextStyle(color: Colors.black),), 
        style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.white),) // Here Im having the error

          // ElevatedButton.icon(
          //   onPressed: () {}, icon: const Icon(Icons.pets_sharp, color: Colors.black,),
          //   label: const Text("comenzemos"),
          //   style: ElevatedButton.styleFrom(
          //     padding: const EdgeInsets.all(20),
          //   ),

          // onPressed: () {},

          // child: const Icon(
          //   Icons.pets_rounded,
          //   color: Colors.black,
          //   size: 20,
          //   textDirection: TextDirection.ltr,
          // ),
        ),
      ),
    );
  }
}
