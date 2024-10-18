import 'package:flutter/material.dart';
import '../core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillBlueGray => BoxDecoration(
        color: appTheme.blueGray90003,
      );
// Gradient decorations
  static BoxDecoration get gradientBlueGrayToBlueGray => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.06, -0.02),
          end: Alignment(0.51, 0.61),
          colors: [appTheme.blueGray80002, appTheme.blueGray90001],
        ),
      );
  static BoxDecoration get gradientBlueGrayToErrorContainer => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.82, 1),
          end: Alignment(0.2, 0),
          colors: [appTheme.blueGray80001, theme.colorScheme.errorContainer],
        ),
      );
// Outline decorations
  static BoxDecoration get outline => BoxDecoration(
        color: appTheme.blueGray90005,
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.primaryContainer,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              -10,
            ),
          )
        ],
      );
  static BoxDecoration get outlineBlueGray => BoxDecoration(
        color: appTheme.blueGray90003,
        boxShadow: [
          BoxShadow(
            color: appTheme.blueGray600,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              30,
            ),
          )
        ],
      );
  static BoxDecoration get outlineGray => BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: appTheme.gray90003,
          ),
          BoxShadow(
            color: appTheme.blueGray90003,
            spreadRadius: 0,
            blurRadius: 4,
            offset: Offset(
              2,
              2,
            ),
          )
        ],
      );
  static BoxDecoration get outlineGray90002 => BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: appTheme.gray90002,
          ),
          BoxShadow(
            color: appTheme.blueGray90003,
            spreadRadius: 0,
            blurRadius: 30,
            offset: Offset(
              4,
              10,
            ),
          )
        ],
      );
}

class BorderRadiusStyle {
  // Rounded borders
  static BorderRadius get roundedBorder10 => BorderRadius.circular(
        10.h,
      );
  static BorderRadius get roundedBorder20 => BorderRadius.circular(
        20.h,
      );
  static BorderRadius get roundedBorder30 => BorderRadius.circular(
        30.h,
      );
  static BorderRadius get roundedBorder50 => BorderRadius.circular(
        50.h,
      );
}
