import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/core/utils/app_fonts.dart';

class Styles {
  const Styles._();

  //heading 1
  static TextStyle heading1Bold = TextStyle(
    fontFamily: AppFonts.plusJakartaSans,
    fontSize: 32.sp,
    fontWeight: FontWeight.bold,
    height: 1.2,
    letterSpacing: 0,
  );
  static TextStyle heading1SemiBold = TextStyle(
    fontFamily: AppFonts.plusJakartaSans,
    fontSize: 32.sp,
    fontWeight: FontWeight.w600,
    height: 1.2,
    letterSpacing: 0,
  );
  static TextStyle heading1Regular = TextStyle(
    fontFamily: AppFonts.plusJakartaSans,
    fontSize: 32.sp,
    fontWeight: FontWeight.w400,
    height: 1.2,
    letterSpacing: 0,
  );

  //heading 2
  static TextStyle heading2Bold = TextStyle(
    fontFamily: AppFonts.plusJakartaSans,
    fontSize: 24.sp,
    fontWeight: FontWeight.bold,
    height: 1.2,
    letterSpacing: 0,
  );
  static TextStyle heading2SemiBold = TextStyle(
    fontFamily: AppFonts.plusJakartaSans,
    fontSize: 24.sp,
    fontWeight: FontWeight.w600,
    height: 1.2,
    letterSpacing: 0,
  );
  static TextStyle heading2Regular = TextStyle(
    fontFamily: AppFonts.plusJakartaSans,
    fontSize: 24.sp,
    fontWeight: FontWeight.w400,
    height: 1.2,
    letterSpacing: 0,
  );

  //heading 3
  static TextStyle heading3Bold = TextStyle(
    fontFamily: AppFonts.plusJakartaSans,
    fontSize: 18.sp,
    fontWeight: FontWeight.bold,
    letterSpacing: 0.045,
  );
  static TextStyle heading3SemiBold = TextStyle(
    fontFamily: AppFonts.plusJakartaSans,
    fontSize: 18.sp,
    fontWeight: FontWeight.w600,
    letterSpacing: 0.045,
  );
  static TextStyle heading3Regular = TextStyle(
    fontFamily: AppFonts.plusJakartaSans,
    fontSize: 18.sp,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.045,
  );

  //buttons
  static TextStyle button1 = TextStyle(
    fontFamily: AppFonts.plusJakartaSans,
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
    letterSpacing: 0,
  );
  static TextStyle button2 = TextStyle(
    fontFamily: AppFonts.plusJakartaSans,
    fontSize: 14.sp,
    fontWeight: FontWeight.w600,
    letterSpacing: 0,
  );

  //body 1
  static TextStyle body1Medium = TextStyle(
    fontFamily: AppFonts.plusJakartaSans,
    fontSize: 16.sp,
    fontWeight: FontWeight.w500,
    height: 1.5,
    letterSpacing: 0.08,
  );
  static TextStyle body1Regular = TextStyle(
    fontFamily: AppFonts.plusJakartaSans,
    fontSize: 16.sp,
    fontWeight: FontWeight.w400,
    height: 1.5,
    letterSpacing: 0.08,
  );

  //body 2
  static TextStyle body2Medium = TextStyle(
    fontFamily: AppFonts.plusJakartaSans,
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
    height: 1.5,
    letterSpacing: 0.07,
  );
  static TextStyle body2Regular = TextStyle(
    fontFamily: AppFonts.plusJakartaSans,
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
    height: 1.5,
    letterSpacing: 0.07,
  );

  //caption
  static TextStyle captionSemiBold = TextStyle(
    fontFamily: AppFonts.plusJakartaSans,
    fontSize: 12.sp,
    fontWeight: FontWeight.w600,
    letterSpacing: 0.06,
  );
  static TextStyle captionRegular = TextStyle(
    fontFamily: AppFonts.plusJakartaSans,
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.06,
  );

  //overline
  static TextStyle overlineSemiBold = TextStyle(
    fontFamily: AppFonts.plusJakartaSans,
    fontSize: 10.sp,
    fontWeight: FontWeight.w600,
    letterSpacing: 0.15,
  );
  static TextStyle overlineRegular = TextStyle(
    fontFamily: AppFonts.plusJakartaSans,
    fontSize: 10.sp,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.15,
  );
}
