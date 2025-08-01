import 'dart:ui' as ui;

import 'package:flutter/material.dart';

/// A custom painter to paint the crossshair `line`.
class CrosshairLinePainter extends CustomPainter {
  /// Initializes a custom painter to paint the crossshair `line`.
  const CrosshairLinePainter();

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawLine(
      const Offset(0, 8),
      Offset(0, size.height),
      Paint()
        ..strokeWidth = 2
        ..style = PaintingStyle.fill
        ..color = const Color(0x88888880),
        // ..shader = ui.Gradient.linear(
        //   Offset.zero,
        //   Offset(0, size.height),
        //   <Color>[
        //     // TODO(Ramin): Use theme color when cross-hair design got updated
        //    const Color(0x88888880),
        //    const Color(0x88888880),
        //    const  Color(0x88888880),
        //   ],
        //   const <double>[
        //     0,
        //     0.5,
        //     1,
        //   ],
        // ),
    );
  }

  @override
  bool shouldRepaint(CrosshairLinePainter oldDelegate) => true;

  @override
  bool shouldRebuildSemantics(CrosshairLinePainter oldDelegate) => false;
}
