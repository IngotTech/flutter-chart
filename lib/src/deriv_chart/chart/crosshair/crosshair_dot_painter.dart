import 'package:deriv_chart/src/theme/chart_theme.dart';
import 'package:flutter/material.dart';

/// A custom painter to paint the crossshair `dot`.
class CrosshairDotPainter extends CustomPainter {
  /// Initializes a custom painter to paint the crossshair `dot`.
  const CrosshairDotPainter({required this.theme});
  /// The theme to use for painting.
  final ChartTheme theme;
  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawCircle(
      const Offset(0, 0),
      3,
      // TODO(Ramin): Use theme color when cross-hair design got updated
      Paint()..color = theme.currentSpotDotColor,
    );
  }

  @override
  bool shouldRepaint(CrosshairDotPainter oldDelegate) => true;

  @override
  bool shouldRebuildSemantics(CrosshairDotPainter oldDelegate) => false;
}
