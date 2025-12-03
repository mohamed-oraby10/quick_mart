import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/core/utils/app_colors.dart';
import 'package:quick_mart/core/utils/styles.dart';

ThemeData getLightTheme() {
  return ThemeData(
    fontFamily: 'PlusJakartaSans',
    scaffoldBackgroundColor: AppColors.brandWhite,
    brightness: Brightness.light,
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.brandCyan,
      brightness: Brightness.light,
    ),
    textTheme: ThemeData.light().textTheme.apply(
      bodyColor: AppColors.brandBlack,
      displayColor: AppColors.brandBlack,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.brandButton,
        foregroundColor: AppColors.brandButtonText,
        disabledBackgroundColor: AppColors.greyLight50,
        disabledForegroundColor: AppColors.brandButton,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.r)),
        textStyle: Styles.button2,
        minimumSize: Size(double.infinity, 60.h),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12.r),
        borderSide: BorderSide(color: AppColors.greyLight50),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12.r),
        borderSide: BorderSide(color: AppColors.greyLight50),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12.r),
        borderSide: BorderSide(color: AppColors.brandCyan),
      ),
      fillColor: AppColors.brandWhite,
      filled: true,
      hintStyle: Styles.captionRegular.copyWith(color: AppColors.grey100),
    ),
    iconTheme: IconThemeData(color: AppColors.greyLight150,size: 24.sp)
  );
}
