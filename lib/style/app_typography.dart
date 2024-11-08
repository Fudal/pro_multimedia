import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pro_multimedia/style/app_colors.dart';
import 'package:provider/provider.dart';

class AppTypography {
  final TextStyle headline1;
  final TextStyle headline2;
  final TextStyle headline3;
  final TextStyle headline4;
  final TextStyle body1;
  final TextStyle body2;
  final TextStyle body3;
  final TextStyle body4;
  final TextStyle body5;

  AppTypography({
    required this.headline1,
    required this.headline2,
    required this.headline3,
    required this.headline4,
    required this.body1,
    required this.body2,
    required this.body3,
    required this.body4,
    required this.body5,
  });

  static TextStyle wrapWithFont(TextStyle style) => GoogleFonts.roboto(textStyle: style);

  TextTheme get textTheme => TextTheme(
    displayLarge: headline1,
    displayMedium: headline2,
    headlineMedium: headline4,
  );

  static AppTypography memeoHealth = AppTypography(
    headline1: wrapWithFont(
      const TextStyle(
        height: 1.25,
        fontWeight: FontWeight.w600,
        fontSize: 32,
      ),
    ),
    headline2: wrapWithFont(
      const TextStyle(
        height: 1.33,
        fontWeight: FontWeight.w400,
        fontSize: 24,
      ),
    ),
    headline3: wrapWithFont(
      const TextStyle(
        height: 1.33,
        fontWeight: FontWeight.w700,
        fontSize: 20,
      ),
    ),
    headline4: wrapWithFont(
      const TextStyle(
        height: 1.33,
        fontWeight: FontWeight.w700,
        fontSize: 18,
      ),
    ),
    body1: wrapWithFont(
      const TextStyle(
        height: 1.5,
        fontWeight: FontWeight.bold,
        fontSize: 16,
      ),
    ),
    body2: wrapWithFont(
      const TextStyle(
        height: 1.5,
        fontWeight: FontWeight.w400,
        fontSize: 16,
      ),
    ),
    body3: wrapWithFont(
      const TextStyle(
        height: 1.71,
        fontSize: 14,
        fontWeight: FontWeight.w400,
      ),
    ),
    body4: wrapWithFont(
      const TextStyle(
        height: 1.36,
        fontSize: 10,
        fontWeight: FontWeight.w500,
      ),
    ),
    body5: wrapWithFont(
      const TextStyle(
        height: 1.36,
        fontSize: 8,
        fontWeight: FontWeight.w500,
      ),
    ),
  );

  static AppTypography of(BuildContext context) => Provider.of<AppTypography>(context, listen: false);
}

extension TextStyleExtensions on TextStyle {
  TextStyle singleCenteredLine() => copyWith(height: 1);

  TextStyle accent(BuildContext context) => copyWith(color: Theme.of(context).colorScheme.secondary);

  TextStyle light(BuildContext context) => copyWith(
    color: Theme.of(context).brightness == Brightness.dark ? AppColors.dark_60 : AppColors.dark_30,
  );

  TextStyle white() => copyWith(color: AppColors.white);

  TextStyle secondary_10() => copyWith(color: AppColors.secondary_10);

  TextStyle secondary_20() => copyWith(color: AppColors.secondary_20);

  TextStyle secondary_30() => copyWith(color: AppColors.secondary_30);

  TextStyle secondary_40() => copyWith(color: AppColors.secondary_40);

  TextStyle secondary_50() => copyWith(color: AppColors.secondary_50);

  TextStyle secondary_60() => copyWith(color: AppColors.secondary_60);

  TextStyle secondary_70() => copyWith(color: AppColors.secondary_70);

  TextStyle secondary_80() => copyWith(color: AppColors.secondary_80);

  TextStyle secondary_90() => copyWith(color: AppColors.secondary_90);

  TextStyle secondary_100() => copyWith(color: AppColors.secondary_100);

  TextStyle tertiary_10() => copyWith(color: AppColors.secondary_10);

  TextStyle tertiary_20() => copyWith(color: AppColors.tertiary_20);

  TextStyle tertiary_30() => copyWith(color: AppColors.tertiary_30);

  TextStyle tertiary_40() => copyWith(color: AppColors.tertiary_40);

  TextStyle tertiary_50() => copyWith(color: AppColors.tertiary_50);

  TextStyle tertiary_60() => copyWith(color: AppColors.tertiary_60);

  TextStyle tertiary_70() => copyWith(color: AppColors.tertiary_70);

  TextStyle tertiary_80() => copyWith(color: AppColors.tertiary_80);

  TextStyle tertiary_90() => copyWith(color: AppColors.tertiary_90);

  TextStyle tertiary_100() => copyWith(color: AppColors.tertiary_100);

  TextStyle quaternary_10() => copyWith(color: AppColors.quaternary_10);

  TextStyle quaternary_20() => copyWith(color: AppColors.quaternary_20);

  TextStyle quaternary_30() => copyWith(color: AppColors.quaternary_30);

  TextStyle quaternary_40() => copyWith(color: AppColors.quaternary_40);

  TextStyle quaternary_50() => copyWith(color: AppColors.quaternary_50);

  TextStyle quaternary_60() => copyWith(color: AppColors.quaternary_60);

  TextStyle quaternary_70() => copyWith(color: AppColors.quaternary_70);

  TextStyle quaternary_80() => copyWith(color: AppColors.quaternary_80);

  TextStyle quaternary_90() => copyWith(color: AppColors.quaternary_90);

  TextStyle quaternary_100() => copyWith(color: AppColors.quaternary_100);

  TextStyle success_10() => copyWith(color: AppColors.success_10);

  TextStyle success_20() => copyWith(color: AppColors.success_20);

  TextStyle success_30() => copyWith(color: AppColors.success_30);

  TextStyle success_40() => copyWith(color: AppColors.success_40);

  TextStyle success_50() => copyWith(color: AppColors.success_50);

  TextStyle success_60() => copyWith(color: AppColors.success_60);

  TextStyle success_70() => copyWith(color: AppColors.success_70);

  TextStyle success_80() => copyWith(color: AppColors.success_80);

  TextStyle success_90() => copyWith(color: AppColors.success_90);

  TextStyle success_100() => copyWith(color: AppColors.success_100);

  TextStyle dark_5() => copyWith(color: AppColors.dark_5);

  TextStyle dark_10() => copyWith(color: AppColors.dark_10);

  TextStyle dark_20() => copyWith(color: AppColors.dark_20);

  TextStyle dark_30() => copyWith(color: AppColors.dark_30);

  TextStyle dark_40() => copyWith(color: AppColors.dark_40);

  TextStyle dark_50() => copyWith(color: AppColors.dark_50);

  TextStyle dark_60() => copyWith(color: AppColors.dark_60);

  TextStyle dark_70() => copyWith(color: AppColors.dark_70);

  TextStyle dark_80() => copyWith(color: AppColors.dark_80);

  TextStyle dark_90() => copyWith(color: AppColors.dark_90);

  TextStyle dark_100() => copyWith(color: AppColors.dark_100);

  TextStyle primary_10() => copyWith(color: AppColors.primary_10);

  TextStyle primary_20() => copyWith(color: AppColors.primary_20);

  TextStyle primary_30() => copyWith(color: AppColors.primary_30);

  TextStyle primary_40() => copyWith(color: AppColors.primary_40);

  TextStyle primary_50() => copyWith(color: AppColors.primary_50);

  TextStyle primary_60() => copyWith(color: AppColors.primary_60);

  TextStyle primary_70() => copyWith(color: AppColors.primary_70);

  TextStyle primary_80() => copyWith(color: AppColors.primary_80);

  TextStyle primary_90() => copyWith(color: AppColors.primary_90);

  TextStyle primary_100() => copyWith(color: AppColors.primary_100);

  TextStyle primary_200() => copyWith(color: AppColors.primary_200);

  TextStyle error_5() => copyWith(color: AppColors.error_5);

  TextStyle error_10() => copyWith(color: AppColors.error_10);

  TextStyle error_20() => copyWith(color: AppColors.error_20);

  TextStyle error_30() => copyWith(color: AppColors.error_30);

  TextStyle error_40() => copyWith(color: AppColors.error_40);

  TextStyle error_50() => copyWith(color: AppColors.error_50);

  TextStyle error_60() => copyWith(color: AppColors.error_60);

  TextStyle error_70() => copyWith(color: AppColors.error_70);

  TextStyle error_80() => copyWith(color: AppColors.error_80);

  TextStyle error_90() => copyWith(color: AppColors.error_90);

  TextStyle error_100() => copyWith(color: AppColors.error_100);

  TextStyle withColor(Color color) => copyWith(color: color);

  TextStyle bold() => copyWith(fontWeight: FontWeight.bold);
}
