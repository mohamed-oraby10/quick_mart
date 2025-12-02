import 'package:flutter/material.dart';

extension ThemeExtension on BuildContext{
  bool get isDarkMode => Theme.of(this).brightness == Brightness.dark;
}