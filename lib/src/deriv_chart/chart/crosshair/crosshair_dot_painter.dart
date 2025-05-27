import 'package:flutter/material.dart';

/// A custom painter to paint the crossshair `dot`.
class CrosshairDotPainter extends CustomPainter {
  /// Initializes a custom painter to paint the crossshair `dot`.
  const CrosshairDotPainter();

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawCircle(
      const Offset(0, 0),
      3,
      // TODO(Ramin): Use theme color when cross-hair design got updated
      Paint()..color = Color(0xFF323738),
    );
  }

  @override
  bool shouldRepaint(CrosshairDotPainter oldDelegate) => true;

  @override
  bool shouldRebuildSemantics(CrosshairDotPainter oldDelegate) => false;
}
