import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:quick_mart/core/utils/app_colors.dart';
import 'package:quick_mart/core/utils/theme/extensions/theme_extension.dart';
import 'package:quick_mart/core/widgets/arrow_left_icon.dart';

class ProductDetailsAppBar extends StatelessWidget {
  const ProductDetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        children: [
          SizedBox(height: 44.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ArrowLeftIcon(),
              Container(
                height: 32.h,
                width: 32.w,
                decoration: BoxDecoration(
                  color:context.customColors.modeColor,
                  borderRadius: BorderRadius.circular(30.r),
                ),
                child: Center(
                  child: Icon(
                    Iconsax.heart_outline,
                    size: 20.sp,
                    color: context.isDarkMode
                        ? AppColors.brandBlack
                        : AppColors.brandWhite,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
