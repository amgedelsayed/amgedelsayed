import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A class that offers pre-defined button styles for customizing button appearance.
class CustomButtonStyles {
  // Gradient button style
  static BoxDecoration get gradientOnPrimaryContainerToIndigoADecoration =>
      BoxDecoration(
        borderRadius: BorderRadius.circular(10.h),
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.onPrimary,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              20,
            ),
          )
        ],
        gradient: LinearGradient(
          begin: Alignment(0.05, 0),
          end: Alignment(1.0, 1),
          colors: [theme.colorScheme.onPrimaryContainer, appTheme.indigoA400],
        ),
      );
  static BoxDecoration get gradientOnPrimaryContainerToIndigoATL10Decoration =>
      BoxDecoration(
        borderRadius: BorderRadius.circular(10.h),
        boxShadow: [
          BoxShadow(
            color: appTheme.gray900,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              30,
            ),
          )
        ],
        gradient: LinearGradient(
          begin: Alignment(0.05, 0),
          end: Alignment(1.0, 1),
          colors: [theme.colorScheme.onPrimaryContainer, appTheme.indigoA400],
        ),
      );
  static BoxDecoration get gradientOnPrimaryContainerToIndigoATL101Decoration =>
      BoxDecoration(
        borderRadius: BorderRadius.circular(10.h),
        gradient: LinearGradient(
          begin: Alignment(0.05, 0),
          end: Alignment(1.0, 1),
          colors: [theme.colorScheme.onPrimaryContainer, appTheme.indigoA400],
        ),
      );
// Outline button style
  static ButtonStyle get outlineGray => ElevatedButton.styleFrom(
        backgroundColor: appTheme.blueGray90003,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.h),
        ),
        shadowColor: appTheme.gray90001,
        elevation: 4,
        padding: EdgeInsets.zero,
      );
// text button style
  static ButtonStyle get none => ButtonStyle(
      backgroundColor: WidgetStateProperty.all<Color>(Colors.transparent),
      elevation: WidgetStateProperty.all<double>(0),
      padding: WidgetStateProperty.all<EdgeInsetsGeometry>(EdgeInsets.zero),
      side: WidgetStateProperty.all<BorderSide>(
        BorderSide(color: Colors.transparent),
      ));
}
