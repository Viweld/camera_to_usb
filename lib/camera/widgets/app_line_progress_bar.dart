import 'package:flutter/material.dart';

class AppLineProgressBar extends StatelessWidget {
  const AppLineProgressBar(
    this.value, {
    this.indicatorHeight = 6,
    super.key,
  });

  final double value;
  final double indicatorHeight;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size.fromHeight(indicatorHeight),
      foregroundPainter: IndicatorOval(Colors.orange, value),
      painter: IndicatorOval(Colors.white30, 1),
    );
  }
}

class IndicatorOval extends CustomPainter {
  final Color color;
  final double widthFactor;

  IndicatorOval(this.color, this.widthFactor);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..color = color;
    canvas.drawRRect(
      RRect.fromRectAndRadius(
        Rect.fromLTWH(0, 0, size.width * widthFactor, size.height),
        const Radius.circular(3),
      ),
      paint,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
