import 'package:flutter/material.dart';
import 'package:quick_mart/core/utils/theme/extensions/custom_colors_entension.dart';

extension ThemeExtension on BuildContext {
  bool get isDarkMode => Theme.of(this).brightness == Brightness.dark;
  CustomColors get customColors => Theme.of(this).customColors;
}
