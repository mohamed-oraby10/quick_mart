import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/core/utils/app_colors.dart';
import 'package:quick_mart/core/utils/styles.dart';

ThemeData getDarkTheme() {
  return ThemeData(
    fontFamily: 'PlusJakartaSans',
    scaffoldBackgroundColor: AppColors.brandBlack,
    brightness: Brightness.dark,
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.brandCyan,
      brightness: Brightness.dark,
    ),
    textTheme: ThemeData.dark().textTheme.apply(
      bodyColor: AppColors.brandWhite,
      displayColor: AppColors.brandWhite,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.brandCyan,
        foregroundColor: AppColors.brandButtonText,
        disabledBackgroundColor: AppColors.greyDark50,
        disabledForegroundColor: AppColors.brandCyan,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.r),
        ),
        textStyle: Styles.button2,
        minimumSize: Size(double.infinity, 60.h),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12.r),
        borderSide: BorderSide(color: AppColors.greyDark50),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12.r),
        borderSide: BorderSide(color: AppColors.greyDark50),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12.r),
        borderSide: BorderSide(color: AppColors.brandCyan),
      ),
      fillColor: AppColors.brandBlack,
      filled: true,
      hintStyle: Styles.captionRegular.copyWith(color: AppColors.grey100),
    ),
    // iconTheme: IconThemeData(color: AppColors.greyDark150, size: 24.sp),
  );
}
