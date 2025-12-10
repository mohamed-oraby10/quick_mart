import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:quick_mart/core/utils/app_colors.dart';
import 'package:quick_mart/core/utils/theme/extensions/theme_extension.dart';

class GoogleButton extends StatelessWidget {
  const GoogleButton({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        side: BorderSide(color: context.customColors.buttonColor),
        backgroundColor: context.isDarkMode
            ? AppColors.brandBlack
            : AppColors.brandWhite,
      ),
      onPressed: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(text),
          SizedBox(width: 8.w),
          Icon(Iconsax.google_1_bold, size: 24.sp, color: AppColors.brandCyan),
        ],
      ),
    );
  }
}
