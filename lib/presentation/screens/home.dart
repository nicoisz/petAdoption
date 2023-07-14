import 'package:flutter/material.dart';

class HomeScreenn extends StatelessWidget {
  const HomeScreenn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("home screen"),
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
