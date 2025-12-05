import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:quick_mart/core/utils/app_colors.dart';
import 'package:quick_mart/core/utils/theme/extensions/theme_extension.dart';

class FavouriteIcon extends StatelessWidget {
  const FavouriteIcon({super.key, this.onTap});
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(6.r),
      child: Container(
        height: 24.h,
        width: 24.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24.r),
          color: context.isDarkMode
              ? AppColors.brandWhite
              : AppColors.brandBlack,
        ),
        child: Center(
          child: GestureDetector(
            onTap: onTap,
            child: Icon(
              Iconsax.heart_outline,
              size: 12.sp,
              color: context.isDarkMode
                  ? AppColors.brandBlack
                  : AppColors.brandWhite,
            ),
          ),
        ),
      ),
    );
  }
}
