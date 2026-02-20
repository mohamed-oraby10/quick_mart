import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

class LanguageCubit extends HydratedCubit<Locale> {
  LanguageCubit() : super(Locale('en'));

  void changeLanguage(String code) {
    emit(Locale(code));
  }

  @override
  Locale? fromJson(Map<String, dynamic> json) {
    final code = json['languageCode'] as String?;
    if (code == null) return null;
    return Locale(code);
  }

  @override
  Map<String, dynamic>? toJson(Locale state) {
    return {'languageCode': state.languageCode};
  }
}
