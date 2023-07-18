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
                  'assets/images/slide-2.png',
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
                SizedBox(height: 5,),
                Text("Encuentra tu mejor futuro compañero")
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
          GestureDetector(
            onTap: () {
               Navigator.pushNamed(context, 'home');
            },
            child: Container(
              width: 160,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.white,
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  //TODO: circle button no agarra el navigator pushnamed
                  CircleButton(iconData: Icons.pets),
                  SizedBox(
                    width: 10,
                  ),
                  Text('Registrarse')
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
