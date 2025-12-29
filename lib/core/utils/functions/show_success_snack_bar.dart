import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:quick_mart/core/utils/app_colors.dart';
import 'package:quick_mart/core/utils/styles.dart';

void showSuccessSnakBar(context, {required String content}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: AppColors.grey100,
      content: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            content,
            style: Styles.captionSemiBold.copyWith(color: AppColors.brandBlack),
          ),
          Icon(
            Iconsax.tick_circle_bold,
            fill: 1,
            color: AppColors.generalGreen,
            size: 32.sp,
          ),
        ],
      ),
    ),
  );
}
