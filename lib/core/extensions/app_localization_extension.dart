import 'package:flutter/material.dart';
import 'package:quick_mart/l10n/app_localizations.dart';

extension AppLocalization on BuildContext {
  AppLocalizations get locale => AppLocalizations.of(this)!;
}
