import 'package:deriv_chart/src/theme/painting_styles/barrier_style.dart';
import 'package:deriv_chart/src/theme/painting_styles/grid_style.dart';
import 'package:deriv_chart/src/theme/painting_styles/line_style.dart';
import 'package:deriv_chart/src/theme/text_styles.dart';
import 'package:flutter/material.dart';

import 'chart_default_theme.dart';
import 'colors.dart';

/// An implementation of [ChartDefaultTheme] which provides access to
/// dark theme-related colors and styles for the chart package.
class ChartDefaultDarkTheme extends ChartDefaultTheme {
  @override
  Color get backgroundColor => DarkThemeColors.backgroundDynamicHighest;

  @override
  Color get areaLineColor => DarkThemeColors.areaLineColor;

  @override
  Color get areaGradientStart => DarkThemeColors.areaGradientStart;

  @override
  Color get areaGradientEnd => DarkThemeColors.areaGradientEnd;

  @override
  Color get gridLineColor => DarkThemeColors.gridLineColor;

  @override
  Color get currentSpotContainerColor =>
      DarkThemeColors.currentSpotContainerColor;

  @override
  Color get currentSpotTextColor => DarkThemeColors.currentSpotTextColor;

  @override
  Color get currentSpotLineColor => DarkThemeColors.currentSpotLineColor;

  @override
  Color get crosshairInformationBoxContainerGlassColor =>
      DarkThemeColors.crosshairInformationBoxContainerGlassColor;

  @override
  Color get crosshairInformationBoxContainerNormalColor =>
      DarkThemeColors.crosshairInformationBoxContainerNormalColor;

  @override
  Color get crosshairInformationBoxTextDefault =>
      DarkThemeColors.crosshairInformationBoxTextDefault;

  @override
  Color get crosshairInformationBoxTextLoss =>
      DarkThemeColors.crosshairInformationBoxTextLoss;

  @override
  Color get crosshairInformationBoxTextProfit =>
      DarkThemeColors.crosshairInformationBoxTextProfit;

  @override
  Color get crosshairInformationBoxTextStatic =>
      DarkThemeColors.crosshairInformationBoxTextStatic;

  @override
  Color get crosshairInformationBoxTextSubtle =>
      DarkThemeColors.crosshairInformationBoxTextSubtle;

  @override
  Color get crosshairLineDesktopColor =>
      DarkThemeColors.crosshairLineDesktopColor;

  @override
  Color get crosshairLineResponsiveLowerLineGradientEnd =>
      DarkThemeColors.crosshairLineResponsiveLowerLineGradientEnd;

  @override
  Color get crosshairLineResponsiveLowerLineGradientStart =>
      DarkThemeColors.crosshairLineResponsiveLowerLineGradientStart;

  @override
  Color get crosshairLineResponsiveUpperLineGradientEnd =>
      DarkThemeColors.crosshairLineResponsiveUpperLineGradientEnd;

  @override
  Color get crosshairLineResponsiveUpperLineGradientStart =>
      DarkThemeColors.crosshairLineResponsiveUpperLineGradientStart;

  @override
  Color get crosshairInformationBoxBackgroundColor => const Color(0xFF323738);


  @override
  Color get currentSpotDotColor => DarkThemeColors.currentSpotDotColor;

  @override
  Color get currentSpotDotEffect => DarkThemeColors.currentSpotDotEffect;

  @override
  Color get gridTextColor => DarkThemeColors.gridTextColor;

  @override
  GridStyle get gridStyle => GridStyle(
        gridLineColor: gridLineColor,
        xLabelStyle: textStyle(textStyle: gridTextStyle, color: gridTextColor),
        yLabelStyle: textStyle(textStyle: gridTextStyle, color: gridTextColor),
      );

  @override
  LineStyle get lineStyle => LineStyle(
        color: areaLineColor,
        hasArea: true,
        areaGradientColors: (
          start: areaGradientStart,
          end: areaGradientEnd,
        ),
        thickness: areaLineThickness,
      );

  @override
  HorizontalBarrierStyle get currentSpotStyle => HorizontalBarrierStyle(
      color: currentSpotContainerColor,
      textStyle: textStyle(
          textStyle: currentSpotTextStyle, color: currentSpotTextColor),
      isDashed: false,
      labelShapeBackgroundColor: currentSpotContainerColor,
      lineColor: currentSpotLineColor,
      blinkingDotColor: currentSpotDotColor);

  @override
  TextStyle get overLine => TextStyles.overLine;
  
  @override
  TextStyle get overLineLarge => TextStyles.overLineLarge;

  @override
  Color get base01Color => LegacyDarkThemeColors.base01;

  @override
  Color get base03Color => LegacyDarkThemeColors.base03;

  @override
  Color get base04Color => LegacyDarkThemeColors.base04;

  @override
  Color get base05Color => LegacyDarkThemeColors.base05;

  @override
  Color get base07Color => LegacyDarkThemeColors.base07;
  

}
