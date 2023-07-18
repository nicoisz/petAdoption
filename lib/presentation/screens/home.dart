
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  
  HomeScreen({super.key});
  final List<String> animals = ['Perros','Gatos','Pajaros','Acuaticos','Reptiles','Otros'];


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
            padding: EdgeInsets.all(10.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://upload.wikimedia.org/wikipedia/en/d/dc/MichaelScott.png'),
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
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
          Container(
            height: 80,
            color: Colors.white,
            padding: const EdgeInsets.all(20.0),
            child: 
             _CustomChip(animals: animals),
            
          ),
          Container(
            height: 200,
            color: Colors.red,
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

class _CustomChip extends StatelessWidget {
  final List<String> animals;
  _CustomChip({required this.animals});
  


  @override
  
  Widget build(BuildContext context) {
    var animals;
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [ ...animals.map((e)=> Chip(
        backgroundColor: Colors.white,
        shape:const StadiumBorder(side: BorderSide(color: Colors.black26, width: 1.0)),
        label: Text(
          e,
          style:const TextStyle(fontWeight: FontWeight.w300),
        ),),
      ),
      const SizedBox(width: 200,)]
    );
  }
}
