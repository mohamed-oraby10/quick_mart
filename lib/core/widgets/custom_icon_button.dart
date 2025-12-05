import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/core/utils/app_colors.dart';
import 'package:quick_mart/core/utils/theme/extensions/theme_extension.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({super.key, required this.icon, this.onTap});
  final IconData icon;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onTap,
      icon: Icon(
        icon,
        color: context.isDarkMode ? AppColors.brandWhite : AppColors.brandBlack,
        size: 32.sp,
      ),
    );
  }
}
