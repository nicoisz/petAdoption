import 'dart:math' as math;

import 'package:flutter/material.dart';

class MyArc extends StatelessWidget {
  final double diameter;

  const MyArc({super.key, this.diameter = 400});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: MyPainter(),
      size: Size(diameter, diameter),
    );
  }
}

// This is the Painter class
class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()..color = Colors.black;
    canvas.drawArc(
      Rect.fromCenter(
        center: Offset(size.height / 2.06, 400),
        height: size.height,
        width: size.width + 2,
      ),
      math.pi,
      math.pi,
      false,
      paint,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
