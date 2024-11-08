import 'package:flutter/material.dart';
import 'package:pro_multimedia/extensions/context_extension.dart';
import 'package:pro_multimedia/style/app_colors.dart';
import 'package:pro_multimedia/style/app_typography.dart';
import 'package:pro_multimedia/style/dimens.dart';

class CustomButtonRounded extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final bool isEnabled;
  final double horizontalPadding;
  final EdgeInsetsGeometry? externalPadding;
  final double verticalPadding;
  final Color? textColorEnabled;
  final MainAxisAlignment mainAxisAlignment;
  final Color? backgroundColor;
  final Color? borderColor;
  final Widget? prefix;
  final Widget? suffix;
  final TextStyle? textStyle;
  final double? elevation;
  final double? radius;
  final bool isSmall;
  final bool showLoadingIndicator;

  const CustomButtonRounded({
    super.key,
    required this.text,
    this.onPressed,
    this.backgroundColor,
    this.externalPadding,
    this.textColorEnabled,
    this.borderColor,
    this.prefix,
    this.suffix,
    this.textStyle,
    this.elevation = 0,
    this.isEnabled = true,
    this.mainAxisAlignment = MainAxisAlignment.center,
    this.horizontalPadding = Dimens.spacingM,
    this.verticalPadding = Dimens.spacingS,
    this.radius,
    this.isSmall = false,
    this.showLoadingIndicator = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: externalPadding ?? EdgeInsets.zero,
      child: ElevatedButton(
        onPressed: isEnabled && !showLoadingIndicator ? onPressed : null,
        style: ElevatedButton.styleFrom(
          elevation: elevation,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius ?? Dimens.midContainerRadius),
            side: BorderSide(color: isEnabled
                ? borderColor ?? AppColors.primary_100
                : AppColors.dark_20,
            ),
          ),
          disabledBackgroundColor: isEnabled
              ? backgroundColor ?? AppColors.primary_100
              : AppColors.dark_5,
          padding: EdgeInsets.symmetric(
            horizontal: horizontalPadding,
            vertical: verticalPadding,
          ),
          backgroundColor: isEnabled
              ? backgroundColor ?? AppColors.primary_100
              : AppColors.white,
        ),
        child: Row(
          mainAxisSize: isSmall ? MainAxisSize.min : MainAxisSize.max,
          mainAxisAlignment: mainAxisAlignment,
          children: [
            if (prefix != null) ...[
              prefix!,
              const SizedBox(width: Dimens.spacingS),
            ],
            if (showLoadingIndicator) ...[
              const SizedBox(width: Dimens.spacingS),
              const CircularProgressIndicator(),
              const SizedBox(width: Dimens.spacingS),
            ] else
              Flexible(
                child: Text(
                  text,
                  style: textStyle ?? (isEnabled
                      ? context.typo.body1.copyWith(color: textColorEnabled ?? AppColors.white, fontWeight: FontWeight.bold,)
                      : context.typo.body1.dark_50()),
                  textAlign: TextAlign.center,
                ),
              ),
            if (suffix != null) ...[
              const SizedBox(width: Dimens.spacingXs),
              suffix!,
            ],
          ],
        ),
      ),
    );
  }
}
