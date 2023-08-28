import 'package:flutter/material.dart';
import 'package:petadoption/presentation/widgets/circle_button.dart';

import '../widgets/bottom_navigation.dart';
import '../widgets/custom_categories.dart';
import '../widgets/custom_chip.dart';
import '../widgets/custom_pet_list.dart';
import '../widgets/side_menu.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final List<String> animals = [
    'Perros',
    'Gatos',
    'Pajaros',
    'Acuaticos',
    'Reptiles',
    'Otros'
  ];

  List<Map<String, dynamic>> pets = [
    {
      'description': 'Lorem ipsum dolor sit amet.',
      'imageUrl': 'assets/images/home_pets_slide/1.jpg',
      'price': 'Adoptame',
    },
    {
      'description': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
      'imageUrl': 'assets/images/home_pets_slide/2.jpg',
      'price': '86363',
    },
    {
      'description': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
      'imageUrl': 'assets/images/home_pets_slide/3.jpg',
      'price': '75953',
    },
    {
      'description': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
      'imageUrl': 'assets/images/home_pets_slide/4.jpg',
      'price': '23230',
    }
  ];

  List<Map<String, dynamic>> categories = [
    {
      'title': 'Juguetes',
      'imageUrl': 'assets/images/home_categories_slide/1.jpeg'
    },
    {
      'title': 'Comida',
      'imageUrl': 'assets/images/home_categories_slide/2.png'
    },
    {
      'title': 'Veterinarios',
      'imageUrl': 'assets/images/home_categories_slide/3.png'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        elevation: 0,
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        //TODO: al presionar el boton ir a la pagina de perfil
        //TODO obtener imagen de perfil desde firebase
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 15.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://upload.wikimedia.org/wikipedia/en/d/dc/MichaelScott.png'),
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 20.0, right: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hola, Nicolas ✌🏻",
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.1,
                          fontFamily: 'Arial'),
                    ),
                    Text("Good Evening!")
                  ],
                ),
                SizedBox(
                  height: 40,
                  child: OutlinedButton(
                    onPressed: () {},
                    child: const Icon(
                      Icons.search,
                      color: Colors.black54,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 100,
            color: Colors.white,
            padding:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
            child: CustomChip(animals: animals),
          ),
          SizedBox(
            height: 320,
            child: CustomPetsList(pets: pets),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleButton(
                iconData: Icons.pets_sharp,
                buttonText: 'see more',
                backgroundColor: Color(0xFFb1e0da),
                route: 'detail',
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Categories",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "See all",
                        style: TextStyle(
                            fontSize: 14, decoration: TextDecoration.underline),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 250,
                  child: CustomCategories(categories: categories),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: const Row(
        children: [
          SizedBox(
            width: 40,
          ),
          Expanded(
            child: BottomMenuNavigation(
              indexPage: 0,
            ),
          ),
          SizedBox(
            width: 40,
          ),
        ],
      ),
      drawer: const SideMenu(),
    );
  }
}
