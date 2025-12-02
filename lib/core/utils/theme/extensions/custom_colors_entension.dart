import 'package:flutter/material.dart';
import 'package:quick_mart/core/utils/app_colors.dart';

class CustomColors {
  CustomColors._({required this.cardColor, required this.secondaryColor});
  final Color secondaryColor;
  final Color cardColor;
  factory CustomColors._light() {
    return CustomColors._(secondaryColor: AppColors.greyLight150, cardColor: AppColors.brandLightCyan50);
  }
  factory CustomColors._dark() {
    return CustomColors._(secondaryColor: AppColors.greyDark150, cardColor: AppColors.brandDarkCyan50);
  }
}

extension CustomColorsEntension on ThemeData {
  CustomColors get customColors {
    if (brightness == Brightness.dark) {
      return CustomColors._dark();
    }
    return CustomColors._light();
  }
}
