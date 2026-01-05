import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/core/utils/app_colors.dart';
import 'package:quick_mart/core/utils/styles.dart';

ThemeData getDarkTheme({required String fontName}) {
  return ThemeData(
    scaffoldBackgroundColor: AppColors.brandBlack,
    brightness: Brightness.dark,
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.brandCyan,
      brightness: Brightness.dark,
    ),
    textTheme: ThemeData.dark().textTheme.apply(
      fontFamily: fontName,
      bodyColor: AppColors.brandWhite,
      displayColor: AppColors.brandWhite,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        side: BorderSide(color: AppColors.greyDark50),
        backgroundColor: AppColors.brandCyan,
        foregroundColor: AppColors.brandButtonText,
        disabledBackgroundColor: AppColors.brandBlack,
        disabledForegroundColor: AppColors.brandCyan,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.r),
        ),
        textStyle: Styles.button2.copyWith(fontFamily: fontName),
        minimumSize: Size(double.infinity, 60.h),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      suffixIconColor: AppColors.greyDark150,
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
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: AppColors.brandBlack,
      elevation: 0,
      selectedIconTheme: IconThemeData(size: 24.sp, color: AppColors.brandCyan),
      unselectedIconTheme: IconThemeData(
        size: 24.sp,
        color: AppColors.greyDark150,
      ),
      selectedItemColor: AppColors.brandWhite,
      unselectedItemColor: AppColors.greyDark150,
      selectedLabelStyle: Styles.captionSemiBold.copyWith(
        color: AppColors.brandWhite,
      ),
      unselectedLabelStyle: Styles.captionRegular.copyWith(
        color: AppColors.greyDark150,
      ),
    ),
  );
}
