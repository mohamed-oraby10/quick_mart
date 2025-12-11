import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/core/utils/app_colors.dart';
import 'package:quick_mart/core/utils/styles.dart';
import 'package:quick_mart/core/utils/theme/extensions/theme_extension.dart';

class StepperItem extends StatelessWidget {
  const StepperItem({
    super.key,
    required this.icon,
    required this.text,
    this.isActive = false,
    this.isCompleted = false,
  });
  final IconData icon;
  final String text;
  final bool isActive;
  final bool isCompleted;
  @override
  Widget build(BuildContext context) {
    Color color;
    if (isActive) {
      color = context.customColors.modeColor;
    } else if (isCompleted) {
      color = AppColors.brandCyan;
    } else {
      color = context.customColors.secondaryColor;
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(icon, size: 24.sp, color: color),
        Text(
          text,
          style: Styles.captionSemiBold.copyWith(
            color: color,
          ),
        ),
      ],
    );
  }
}
