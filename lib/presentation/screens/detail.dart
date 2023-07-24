import 'package:flutter/material.dart';
import 'package:petadoption/presentation/widgets/arc.dart';

import '../widgets/bottom_navigation.dart';
import '../widgets/oval.dart';

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
              left: width * 0.04,
              top: height * 0.05,
              child: CircleAvatar(
                backgroundImage: AssetImage(pets['imageUrl']),
                radius: 180.0,
              ),
            ),
            Positioned(
              top: height * 0.45,
              child: const MyArc(),
            ),
            Positioned(
              top: height * 0.46,
              left: width * 0.45,
              child: CustomPaint(
                size: Size(
                    width * 1.4,
                    (width * 0.99)
                        .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                painter: RPSCustomPainter(),
              ),
            ),
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
