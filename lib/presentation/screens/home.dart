import 'package:flutter/material.dart';
import 'package:petadoption/presentation/widgets/circle_button.dart';

import '../widgets/bottom_navigation.dart';

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
            child: _CustomChip(animals: animals),
          ),
          SizedBox(
            height: 320,
            child: _CustomPetsList(pets: pets),
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
                  child: _CustomCategories(categories: categories),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: const BottomMenuNavigation(
        indexPage: 0,
      ),
      drawer: Drawer(
        child: ListView(
          children: const <Widget>[
            SizedBox(
              height: 80,
              child: DrawerHeader(
                child: Text(
                  'Adoptar App',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                  ),
                ),
              ),
            ),
            ListTile(
              title: Text('Item 1'),
            ),
            ListTile(
              title: Text('Item 2'),
            ),
          ],
        ),
      ),
    );
  }
}

class _CustomPetsList extends StatelessWidget {
  _CustomPetsList({required this.pets});
  List<Map<String, dynamic>> pets;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemBuilder: (BuildContext context, int index) {
        final price = (pets[index]['price'] == 'Adoptame') ? '' : '\$';

        return Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, 'detail');
              }, // Image tapped
              splashColor: Colors.white10, // Splash color over image
              child: CircleAvatar(
                backgroundImage: AssetImage(pets[index]['imageUrl']),
                radius: 120.0,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              width: 250.0,
              child: Column(
                children: [
                  Text(
                    pets[index]['description'],
                    style: const TextStyle(fontSize: 14.0),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    '$price${pets[index]['price']}',
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ],
        );
      },
      itemCount: pets.length,
      separatorBuilder: (BuildContext context, int index) {
        return const SizedBox(width: 20);
      },
    );
  }
}

class _CustomChip extends StatelessWidget {
  const _CustomChip({required this.animals});

  final List<String> animals;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemBuilder: (BuildContext context, int index) {
        return Chip(
          labelPadding: const EdgeInsets.symmetric(horizontal: 10.0),
          backgroundColor: Colors.white,
          shape: const StadiumBorder(
              side: BorderSide(color: Colors.black26, width: 1.0)),
          label: Text(
            animals[index],
            style: const TextStyle(fontWeight: FontWeight.w300),
          ),
        );
      },
      itemCount: animals.length,
      separatorBuilder: (BuildContext context, int index) {
        return const SizedBox(
          width: 10,
        );
      },
    );
  }
}

class _CustomCategories extends StatelessWidget {
  _CustomCategories({super.key, required this.categories});
  List<Map<String, dynamic>> categories;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                categories[index]['title'],
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Image.asset(
                categories[index]['imageUrl'],
                height: 200,
                width: 250,
              ),
            ],
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(
            width: 20,
          );
        },
        itemCount: 3);
  }
}
