import 'package:flutter/material.dart';
import 'package:petadoption/domain/entities/pets.dart';
import 'package:petadoption/presentation/widgets/circle_button.dart';

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
      'imageUrl': 'assets/images/mascotas/mascota_1.jpg',
      'price': '63528',
    },
    {
      'description': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
      'imageUrl': 'assets/images/mascotas/mascota_2.jpg',
      'price': '86363',
    },
    {
      'description': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
      'imageUrl': 'assets/images/mascotas/mascota_3.jpg',
      'price': '75953',
    },
    {
      'description': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
      'imageUrl': 'assets/images/mascotas/mascota_4.jpg',
      'price': '23230',
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      "Hola, Luis ✌🏻",
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
          Container(
            height: 50,
            child: const CircleButton(
              iconData: Icons.pets_sharp,
              buttonText: 'see more',
              backgroundColor: Color(0xFFb1e0da),
            ),
          ),
          Container(
            height: 200,
            color: Colors.green,
          ),
          Container(
            height: 200,
            color: Colors.pink,
          ),
        ],
      ),
      bottomNavigationBar: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.plus_one),
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
        return Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(pets[index]['imageUrl']),
              radius: 120.0,
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
                    '\$${pets[index]['price']}',
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
