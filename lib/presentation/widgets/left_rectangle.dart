//Copy this CustomPainter code to the Bottom of the File
import 'package:flutter/material.dart';

class RectangleCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 3.868750, size.height * 7.437500);
    path_0.cubicTo(
        size.width * 3.252500,
        size.height * 7.356250,
        size.width * 2.758750,
        size.height * 6.910000,
        size.width * 2.617500,
        size.height * 6.305000);
    path_0.cubicTo(
        size.width * 2.595000,
        size.height * 6.211250,
        size.width * 2.593750,
        size.height * 6.115000,
        size.width * 2.593750,
        size.height * 4.431250);
    path_0.lineTo(size.width * 2.593750, size.height * 2.656250);
    path_0.lineTo(size.width * 4.262500, size.height * 2.646250);
    path_0.cubicTo(
        size.width * 5.482500,
        size.height * 2.638750,
        size.width * 5.965000,
        size.height * 2.640000,
        size.width * 6.056250,
        size.height * 2.650000);
    path_0.cubicTo(
        size.width * 6.437500,
        size.height * 2.692500,
        size.width * 6.725000,
        size.height * 2.833750,
        size.width * 6.981250,
        size.height * 3.101250);
    path_0.cubicTo(
        size.width * 7.188750,
        size.height * 3.451250,
        size.width * 7.491250,
        size.height * 3.495000,
        size.width * 7.788750,
        size.height * 3.108750);
    path_0.cubicTo(
        size.width * 7.841250,
        size.height * 3.121250,
        size.width * 8.530000,
        size.height * 3.121250,
        size.width * 9.602500,
        size.height * 0.0416667);
    path_0.lineTo(size.width * 9.602500, size.height * 0.0416667);
    path_0.lineTo(size.width * 7.881250, size.height * 0.0416667);
    path_0.cubicTo(
        size.width * 6.933750,
        size.height * 0.0416667,
        size.width * 6.125000,
        size.height * 0.0416667,
        size.width * 6.083750,
        size.height * 0.0416667);
    path_0.close();
//0.0416667
    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = Color.fromARGB(255, 255, 255, 255).withOpacity(1.0);
    canvas.drawPath(path_0, paint_0_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
