import 'package:flutter/material.dart';
import 'package:pro_multimedia/style/app_typography.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

extension ContextExtensions on BuildContext {
  AppTypography get typo => AppTypography.of(this);
}

extension StfulContextExtensions on State {
  AppTypography get typo => AppTypography.of(context);
}

extension BuildContextHelper on BuildContext {
  AppLocalizations get tr {
    return AppLocalizations.of(this)!;
  }
}