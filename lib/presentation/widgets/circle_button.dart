
import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {
  final IconData iconData;

  const CircleButton({ Key ?key, required this.iconData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double size = 50.0;

    return InkResponse(
      onTap: (){},
      child:  Container(
        margin: const EdgeInsets.all(2.0),
        width: size,
        height: size,
        decoration:  const BoxDecoration(
          color: Colors.black,
          shape: BoxShape.circle,
        ),
        child:  Icon(
          iconData,
          color: Colors.white,
        ),
      ),
    );
  }
}