import 'package:flutter/material.dart';

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Circle

    Paint paint_fill_1 = Paint()
      ..color = const Color.fromARGB(255, 255, 255, 255)
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.0416667, 0);
    path_1.cubicTo(
        size.width * 0.0822667,
        size.height * 0.0012429,
        size.width * 0.0846333,
        size.height * 0.0294857,
        size.width * 0.0836833,
        size.height * 0.1144571);
    path_1.cubicTo(
        size.width * 0.0833583,
        size.height * 0.2056286,
        size.width * 0.0855167,
        size.height * 0.2149143,
        size.width * 0.0422250,
        size.height * 0.2150000);
    path_1.cubicTo(
        size.width * 0.0002833,
        size.height * 0.2131143,
        size.width * 0.0010583,
        size.height * 0.2015857,
        size.width * 0.0010583,
        size.height * 0.1146429);
    path_1.cubicTo(
        size.width * 0.0006083,
        size.height * 0.0310143,
        size.width * 0.0012250,
        size.height * 0.0003429,
        size.width * 0.0416667,
        0);
    path_1.close();

    canvas.drawPath(path_1, paint_fill_1);

    // Circle

    Paint paint_stroke_1 = Paint()
      ..color = const Color.fromARGB(255, 255, 255, 255)
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.13
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    canvas.drawPath(path_1, paint_stroke_1);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
