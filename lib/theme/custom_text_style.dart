import 'package:flutter/material.dart';
import '../core/app_export.dart';

extension on TextStyle {
  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }

  TextStyle get workSans {
    return copyWith(
      fontFamily: 'Work Sans',
    );
  }

  TextStyle get plusJakartaSans {
    return copyWith(
      fontFamily: 'Plus Jakarta Sans',
    );
  }
}

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.
class CustomTextStyles {
  // Body text style
  static TextStyle get bodyLargePlusJakartaSansWhiteA70001 =>
      theme.textTheme.bodyLarge!.plusJakartaSans.copyWith(
        color: appTheme.whiteA70001,
        fontSize: 19.fSize,
      );
  static TextStyle get bodyLargeWhiteA70001 =>
      theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.whiteA70001,
        fontSize: 19.fSize,
      );
  static TextStyle get bodyLargeWhiteA7000119 =>
      theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.whiteA70001,
        fontSize: 19.fSize,
      );
  static TextStyle get bodyMedium13 => theme.textTheme.bodyMedium!.copyWith(
        fontSize: 13.fSize,
      );
  static TextStyle get bodyMediumBlue40001 =>
      theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blue40001,
        fontSize: 13.fSize,
      );
  static get bodyMedium_1 => theme.textTheme.bodyMedium!;
// Headline text style
  static TextStyle get headlineMediumWorkSansWhiteA70001 =>
      theme.textTheme.headlineMedium!.workSans.copyWith(
        color: appTheme.whiteA70001,
      );
// Label text style
  static TextStyle get labelLargeSemiBold =>
      theme.textTheme.labelLarge!.copyWith(
        fontWeight: FontWeight.w600,
      );
  static TextStyle get labelLargeWhiteA70001 =>
      theme.textTheme.labelLarge!.copyWith(
        color: appTheme.whiteA70001,
      );
  static TextStyle get labelLargeWhiteA70001Bold =>
      theme.textTheme.labelLarge!.copyWith(
        color: appTheme.whiteA70001,
        fontWeight: FontWeight.w700,
      );
// Title text style
  static TextStyle get titleLargeBlack900 =>
      theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black900,
        fontSize: 23.fSize,
        fontWeight: FontWeight.w500,
      );
  static TextStyle get titleLargePoppins =>
      theme.textTheme.titleLarge!.poppins.copyWith(
        fontSize: 20.fSize,
        fontWeight: FontWeight.w700,
      );
  static TextStyle get titleLargePoppinsBold =>
      theme.textTheme.titleLarge!.poppins.copyWith(
        fontSize: 20.fSize,
        fontWeight: FontWeight.w700,
      );
  static TextStyle get titleLargeWhiteA70001 =>
      theme.textTheme.titleLarge!.copyWith(
        color: appTheme.whiteA70001.withOpacity(0.5),
        fontWeight: FontWeight.w500,
      );
  static TextStyle get titleMediumLightblue400 =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.lightBlue400,
      );
  static TextStyle get titleMediumWorkSansGray600 =>
      theme.textTheme.titleMedium!.workSans.copyWith(
        color: appTheme.gray600,
        fontSize: 16.fSize,
      );
  static TextStyle get titleMediumWorkSansPrimary =>
      theme.textTheme.titleMedium!.workSans.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 19.fSize,
      );
  static TextStyle get titleSmallBlue40002 =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blue40002,
      );
  static TextStyle get titleSmallMedium => theme.textTheme.titleSmall!.copyWith(
        fontWeight: FontWeight.w500,
      );
  static TextStyle get titleSmallWhiteA70001 =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.whiteA70001.withOpacity(0.87),
      );
  static TextStyle get titleSmallWhiteA70001Medium =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.whiteA70001.withOpacity(0.6),
        fontWeight: FontWeight.w500,
      );
  static TextStyle get titleSmallWhiteA70001Medium_1 =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.whiteA70001.withOpacity(0.87),
        fontWeight: FontWeight.w500,
      );
}
