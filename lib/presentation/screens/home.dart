import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        //TODO: al presionar el boton ir a la pagina de perfil
        //TODO obtener imagen de perfil desde firebase
        actions: const [Padding(
          padding: EdgeInsets.all(10.0),
          child: CircleAvatar(backgroundImage: NetworkImage('https://m.media-amazon.com/images/M/MV5BMTM3OTUwMDYwNl5BMl5BanBnXkFtZTcwNTUyNzc3Nw@@._V1_FMjpg_UX1000_.jpg'),),
        )],
      ),
      body: const Center(
        child: Text("Home Screen"),
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
