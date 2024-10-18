import 'package:flutter/material.dart';
import '../core/app_export.dart';

LightCodeColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();

/// Helper class for managing themes and colors.

// ignore_for_file: must_be_immutable
class ThemeHelper {
  // The current app theme
  var _appTheme = PrefUtils().getThemeData();

// A map of custom color themes supported by the app
  Map<String, LightCodeColors> _supportedCustomColor = {
    'lightCode': LightCodeColors()
  };

// A map of color schemes supported by the app
  Map<String, ColorScheme> _supportedColorScheme = {
    'lightCode': ColorSchemes.lightCodeColorScheme
  };

  /// Returns the lightCode colors for the current theme.
  LightCodeColors _getThemeColors() {
    return _supportedCustomColor[_appTheme] ?? LightCodeColors();
  }

  /// Returns the current theme data.
  ThemeData _getThemeData() {
    var colorScheme =
        _supportedColorScheme[_appTheme] ?? ColorSchemes.lightCodeColorScheme;
    return ThemeData(
      visualDensity: VisualDensity.standard,
      colorScheme: colorScheme,
      textTheme: TextThemes.textTheme(colorScheme),
      scaffoldBackgroundColor: appTheme.blueGray90003,
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          backgroundColor: appTheme.whiteA70001,
          side: BorderSide(
            color: appTheme.black900.withOpacity(0.1),
            width: 1,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: colorScheme.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          elevation: 0,
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      checkboxTheme: CheckboxThemeData(
        fillColor: WidgetStateColor.resolveWith((states) {
          if (states.contains(WidgetState.selected)) {
            return colorScheme.primary;
          }
          return Colors.transparent;
        }),
        side: BorderSide(
          color: appTheme.gray300,
          width: 1,
        ),
        visualDensity: const VisualDensity(
          vertical: -4,
          horizontal: -4,
        ),
      ),
    );
  }

  /// Returns the lightCode colors for the current theme.
  LightCodeColors themeColor() => _getThemeColors();

  /// Returns the current theme data.
  ThemeData themeData() => _getThemeData();
}

/// Class containing the supported text theme styles.
class TextThemes {
  static TextTheme textTheme(ColorScheme colorScheme) => TextTheme(
        bodyLarge: TextStyle(
          color: colorScheme.primary,
          fontSize: 17.fSize,
          fontFamily: 'Work Sans',
          fontWeight: FontWeight.w400,
        ),
        bodyMedium: TextStyle(
          color: appTheme.whiteA70001.withOpacity(0.6),
          fontSize: 15.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
        headlineLarge: TextStyle(
          color: appTheme.whiteA70001,
          fontSize: 32.fSize,
          fontFamily: 'Work Sans',
          fontWeight: FontWeight.w700,
        ),
        headlineMedium: TextStyle(
          color: appTheme.whiteA70001.withOpacity(0.6),
          fontSize: 26.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w700,
        ),
        headlineSmall: TextStyle(
          color: appTheme.blue400,
          fontSize: 24.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
        labelLarge: TextStyle(
          color: appTheme.whiteA70001.withOpacity(0.6),
          fontSize: 13.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        ),
        titleLarge: TextStyle(
          color: appTheme.whiteA70001,
          fontSize: 21.fSize,
          fontFamily: 'Work Sans',
          fontWeight: FontWeight.w400,
        ),
        titleMedium: TextStyle(
          color: appTheme.whiteA70001,
          fontSize: 17.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w700,
        ),
        titleSmall: TextStyle(
          color: appTheme.whiteA70001,
          fontSize: 15.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w700,
        ),
      );
}

/// Class containing the supported color schemes.
class ColorSchemes {
  static final lightCodeColorScheme = ColorScheme.light(
    primary: Color(0XFF0098FF),
    primaryContainer: Color(0XFF1C222D),
    secondaryContainer: Color(0XFF4286EE),
    errorContainer: Color(0XFF4C576F),
    onPrimary: Color(0XFF10141B),
    onPrimaryContainer: Color(0XFF34C8E8),
  );
}

/// Class containing custom colors for a lightCode theme.
class LightCodeColors {
  // Black
  Color get black900 => Color(0XFF000000);
// Blue
  Color get blue400 => Color(0XFF3D9CEA);
  Color get blue40001 => Color(0XFF3C9EEA);
  Color get blue40002 => Color(0XFF3CA4EB);
// BlueGray
  Color get blueGray600 => Color(0XFF516C8F);
  Color get blueGray800 => Color(0XFF323B4F);
  Color get blueGray80001 => Color(0XFF363E50);
  Color get blueGray80002 => Color(0XFF353F53);
  Color get blueGray900 => Color(0XFF1F2533);
  Color get blueGray90001 => Color(0XFF212734);
  Color get blueGray90002 => Color(0XFF28303F);
  Color get blueGray90003 => Color(0XFF242C3B);
  Color get blueGray90004 => Color(0XFF252A39);
  Color get blueGray90005 => Color(0XFF262E3D);
// Gray
  Color get gray300 => Color(0XFFE3E4E8);
  Color get gray600 => Color(0XFF777777);
  Color get gray900 => Color(0XFF191F2B);
  Color get gray90001 => Color(0XFF11151D);
  Color get gray90002 => Color(0XFF181E29);
  Color get gray90003 => Color(0XFF1E2430);
  Color get gray90099 => Color(0X99181D26);
// Indigo
  Color get indigoA400 => Color(0XFF4E4AF2);
// LightBlue
  Color get lightBlue400 => Color(0XFF38B8EA);
// Red
  Color get red500 => Color(0XFFEA4335);
// White
  Color get whiteA700 => Color(0XFFF9FEFF);
  Color get whiteA70001 => Color(0XFFFFFFFF);
}
