import 'package:flutter/material.dart';
import '../core/app_export.dart';

extension IconButtonStyleHelper on CustomIconButton {
  static BoxDecoration get gradientBlueGrayToBlueGray => BoxDecoration(
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
          begin: Alignment(0.36, 0),
          end: Alignment(0.58, 0),
          colors: [appTheme.blueGray80002, appTheme.blueGray90001],
        ),
      );
  static BoxDecoration get gradientBlueGrayToGray => BoxDecoration(
        borderRadius: BorderRadius.circular(10.h),
        boxShadow: [
          BoxShadow(
            spreadRadius: 2.h,
            blurRadius: 2.h,
          )
        ],
        gradient: LinearGradient(
          begin: Alignment(0.28, 0),
          end: Alignment(0.5, 0),
          colors: [appTheme.blueGray80001.withOpacity(0.6), appTheme.gray90099],
        ),
      );
  static BoxDecoration get gradientBlueGrayToGrayTL10 => BoxDecoration(
        borderRadius: BorderRadius.circular(10.h),
        gradient: LinearGradient(
          begin: Alignment(0.28, 0),
          end: Alignment(0.5, 0),
          colors: [appTheme.blueGray80001.withOpacity(0.6), appTheme.gray90099],
        ),
      );
  static BoxDecoration get none => BoxDecoration();
}

class CustomIconButton extends StatelessWidget {
  CustomIconButton(
      {Key? key,
      this.alignment,
      this.height,
      this.width,
      this.decoration,
      this.padding,
      this.onTap,
      this.child})
      : super(
          key: key,
        );

  final Alignment? alignment;

  final double? height;

  final double? width;

  final BoxDecoration? decoration;

  final EdgeInsetsGeometry? padding;

  final VoidCallback? onTap;

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center, child: iconButtonWidget)
        : iconButtonWidget;
  }

  Widget get iconButtonWidget => SizedBox(
        height: height ?? 0,
        width: width ?? 0,
        child: DecoratedBox(
          decoration: decoration ??
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
                  colors: [
                    theme.colorScheme.onPrimaryContainer,
                    appTheme.indigoA400
                  ],
                ),
              ),
          child: IconButton(
            padding: padding ?? EdgeInsets.zero,
            onPressed: onTap,
            icon: child ?? Container(),
          ),
        ),
      );
}
