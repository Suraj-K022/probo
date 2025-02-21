import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DashedBorderContainer extends StatelessWidget {
  final Widget child;

  const DashedBorderContainer({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: DashedBorderPainter(),
      child: Container(padding: EdgeInsets.symmetric(vertical: 12),child: child),
    );
  }
}

class DashedBorderPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    double dashWidth = 5, dashSpace = 5;
    final paint = Paint()
      ..color = Get.theme.primaryColor
      ..strokeWidth = 2
      ..style = PaintingStyle.stroke;

    Path path = Path()..addRect(Rect.fromLTWH(0, 0, size.width, size.height));

    Path dashPath = Path();
    for (PathMetric pathMetric in path.computeMetrics()) {
      double distance = 0.0;
      while (distance < pathMetric.length) {
        final extractedPath = pathMetric.extractPath(distance, distance + dashWidth,);
        dashPath.addPath(extractedPath, Offset.zero);
        distance += dashWidth + dashSpace;
      }
    }
    canvas.drawPath(dashPath, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
