import 'package:flutter/material.dart';
import 'package:petadoption/presentation/widgets/arc.dart';

import '../widgets/bottom_navigation.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key, required this.pets});

  final Map<String, dynamic> pets;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        foregroundColor: Colors.black,
        backgroundColor: Colors.transparent,
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
      body: Container(
        height: height,
        width: width,
        child: Stack(
          children: [
            Positioned(
              left: 15.0,
              top: 50,
              child: CircleAvatar(
                backgroundImage: AssetImage(pets['imageUrl']),
                radius: 180.0,
              ),
            ),
            const Positioned(top: 380.0, child: MyArc()),
            Positioned(
              top: height * 0.62,
              child: Container(
                height: 350,
                width: 400,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomMenuNavigation(
        indexPage: 1,
      ),
    );
  }
}
