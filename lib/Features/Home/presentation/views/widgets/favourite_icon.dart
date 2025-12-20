import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:quick_mart/core/utils/app_colors.dart';
import 'package:quick_mart/core/utils/theme/extensions/theme_extension.dart';

class FavouriteIcon extends StatefulWidget {
  const FavouriteIcon({super.key});

  @override
  State<FavouriteIcon> createState() => _FavouriteIconState();
}

class _FavouriteIconState extends State<FavouriteIcon> {
  bool isFavourite = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(6.r),
      child: Container(
        height: 24.h,
        width: 24.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24.r),
          color: context.customColors.modeColor,
        ),
        child: Center(
          child: GestureDetector(
            onTap: () {
              setState(() {
                isFavourite = !isFavourite;
              });
            },
            child: Icon(
              isFavourite ? Iconsax.heart_bold : Iconsax.heart_outline,
              size: 12.sp,
              color: context.isDarkMode
                  ? isFavourite
                        ? AppColors.generalRed
                        : AppColors.brandBlack
                  : isFavourite
                  ? AppColors.generalRed
                  : AppColors.brandWhite,
            ),
          ),
        ),
      ),
    );
  }
}
