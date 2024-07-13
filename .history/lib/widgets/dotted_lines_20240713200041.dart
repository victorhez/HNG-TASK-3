import 'package:flutter/material.dart';

class DottedLinePainter extends CustomPainter {
  final double gap;
  final Color color;

  DottedLinePainter({this.gap = 5.0, this.color = Colors.black});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..strokeWidth = 2.0
      ..style = PaintingStyle.stroke;

    double startX = 0;
    final double endX = size.width;

    while (startX < endX) {
      canvas.drawCircle(Offset(startX, size.height / 1), 1.0, paint);
      startX += gap;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
