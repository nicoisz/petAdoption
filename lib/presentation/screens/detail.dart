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
                size: Size(width * 1.25, (width * .9).toDouble()),
                painter: OvalCustomPainter(),
              ),
            ),
            Positioned(
                top: height * 0.48,
                left: width / 5,
                child: const Column(
                  children: [
                    Icon(
                      Icons.pets,
                      color: Colors.white,
                      size: 40.0,
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      "data",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                )),
            Positioned(
                top: height * 0.48,
                left: width * 0.7,
                child: const Column(
                  children: [
                    Icon(
                      Icons.pets,
                      color: Colors.white,
                      size: 40.0,
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      "data",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                )),
            Positioned(
                top: height * 0.53,
                left: width * 0.45,
                child: const Text(
                  "Neat",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                )),
            Positioned(
                top: height * 0.48,
                left: width * 0.44,
                child: const Icon(Icons.star)),
            Positioned(
                top: height * 0.48,
                left: width * 0.5,
                child: const Icon(Icons.star)),
            Positioned(
                top: height * 0.44,
                left: width * 0.47,
                child: const Icon(Icons.star)),
            Positioned(
              top: height * 0.62,
              child: Container(
                height: 350,
                width: 400,
                color: Colors.black,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "Egyptian Mau",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Icon(
                          Icons.api_rounded,
                          color: Colors.white,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "Male · 9 month",
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          "2,6 km",
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: height * 0.2,
                      width: width * 0.8,
                      decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10.0)),
                          border: Border.all(color: Colors.white)),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                            style: TextStyle(color: Colors.white),
                            "Text(String data, {Key? key, TextStyle? style, StrutStyle? strutStyle, TextAlign? textAlign, TextDirection? textDirection, Locale? locale, bool? softWrap, TextOverflow? overflow, double? textScaleFactor, int? maxLines, String? semanticsLabel, TextWidthBasis? textWidthBasis, TextHeightBehavior? textHeightBehavior, Color? selectionColor})"),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const Row(
        children: [
          SizedBox(
            width: 40,
          ),
          Expanded(
            child: BottomMenuNavigation(
              indexPage: 1,
            ),
          ),
          SizedBox(
            width: 40,
          ),
        ],
      ),
    );
  }
}
