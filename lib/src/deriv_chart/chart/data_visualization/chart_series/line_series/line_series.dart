import 'package:deriv_chart/src/models/tick.dart';
import 'package:deriv_chart/src/theme/chart_theme.dart';
import 'package:deriv_chart/src/theme/painting_styles/barrier_style.dart';
import 'package:deriv_chart/src/theme/painting_styles/line_style.dart';
import 'package:flutter/material.dart';

import '../data_series.dart';
import '../series_painter.dart';
import 'line_painter.dart';

/// Line series.
class LineSeries extends DataSeries<Tick> {
  
  /// Initializes a line series.
  LineSeries(
    List<Tick> entries, {
    String? id,
    LineStyle? style,

    HorizontalBarrierStyle? lastTickIndicatorStyle,
  }) : super(
          entries,
          id: id ?? 'LineSeries',
          style: style,
          lastTickIndicatorStyle: lastTickIndicatorStyle,
        );
    /// The glow intensity of the line series.
    double glowIntensity = 0.0;

  @override
  SeriesPainter<DataSeries<Tick>> createPainter() => LinePainter(
        this,
      );

  @override
  Widget getCrossHairInfo(Tick crossHairTick, int pipSize, ChartTheme theme) =>
      Text(
        '${crossHairTick.quote.toStringAsFixed(pipSize)}',
        style: theme.overLineLarge,
      );

  @override
  double maxValueOf(Tick t) => t.quote;

  @override
  double minValueOf(Tick t) => t.quote;
}
