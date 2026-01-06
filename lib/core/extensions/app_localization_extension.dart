import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quick_mart/core/cubits/language_cubit/language_cubit.dart';
import 'package:quick_mart/l10n/app_localizations.dart';

extension AppLocalization on BuildContext {
  AppLocalizations get locale => AppLocalizations.of(this)!;
  bool get isArabic => watch<LanguageCubit>().state.languageCode == 'ar';
}
