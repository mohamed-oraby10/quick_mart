import 'package:flutter/material.dart';
import 'package:quick_mart/core/utils/app_colors.dart';

class CustomColors {
  CustomColors._({required this.buttonColor, required this.cardColor, required this.secondaryColor});
  final Color secondaryColor;
  final Color cardColor;
  final Color buttonColor;
  factory CustomColors._light() {
    return CustomColors._(
      secondaryColor: AppColors.greyLight150,
      cardColor: AppColors.brandLightCyan50, buttonColor: AppColors.greyLight50,
    );
  }
  factory CustomColors._dark() {
    return CustomColors._(
      secondaryColor: AppColors.greyDark150,
      cardColor: AppColors.brandDarkCyan50, buttonColor: AppColors.greyDark50,
    );
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
