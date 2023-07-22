import 'package:flutter/material.dart';
import 'package:petadoption/presentation/widgets/arc.dart';

import '../widgets/bottom_navigation.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

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
      body: Column(
        children: [
          const MyArc(),
          Container(
            height: 341,
            color: Colors.black,
          ),
        ],
      ),
      bottomNavigationBar: const BottomMenuNavigation(
        indexPage: 1,
      ),
    );
  }
}
