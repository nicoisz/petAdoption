import 'package:flutter/material.dart';
import 'package:petadoption/presentation/widgets/circle_button.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 600,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Transform.rotate(
                  alignment: Alignment.center,
                  origin: const Offset(-300.0, -100.0),
                  angle: -75,
                  child: const Icon(
                    Icons.pets,
                    size: 250.0,
                  ),
                ),
                Image.asset(
                  'assets/images/splash_screen/1.png',
                  height: 200,
                  width: 300,
                  alignment: Alignment.bottomRight,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 100,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Bienvenido a Petta',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    Icon(
                      Icons.pets,
                      size: 18.0,
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Text("Encuentra de todo paraa tu mascota")
              ],
            ),
          ),
        ],
      ),
      backgroundColor: const Color(0xFFb1e0da),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Colors.black),
              ),
            ),
            child: const Text('hechar un vistazo'),
          ),
          const SizedBox(
            width: 60,
          ),
          const CircleButton(
            iconData: Icons.pets,
            buttonText: 'Comenzar',
            backgroundColor: Colors.white,
            route: 'home',
          )
        ],
      ),
    );
  }
}



//flutterfire configure --project=petta-app
/*
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

// ...

await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
*/