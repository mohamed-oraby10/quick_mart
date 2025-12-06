import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/core/utils/app_colors.dart';

class ProductColorsItem extends StatelessWidget {
  const ProductColorsItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 4.w),
      child: Container(
        height: 32.h,
        width: 32.w,
        decoration: BoxDecoration(
          color: AppColors.generalOrange,
          borderRadius: BorderRadius.circular(29.r),
        ),
      ),
    );
  }
}
