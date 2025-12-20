import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/core/utils/app_colors.dart';
import 'package:quick_mart/core/utils/styles.dart';
import 'package:quick_mart/core/utils/theme/extensions/theme_extension.dart';

class BadgeItem extends StatelessWidget {
  const BadgeItem({super.key, required this.text, required this.bageColor});
  final String text;
  final Color bageColor;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 8.w),
      child: Container(
        padding: EdgeInsets.all(6.r),
        decoration: BoxDecoration(
          color: bageColor,
          borderRadius: BorderRadius.circular(8.r),
        ),
        child: Center(
          child: Text(
            text,
            style: Styles.overlineSemiBold.copyWith(
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
