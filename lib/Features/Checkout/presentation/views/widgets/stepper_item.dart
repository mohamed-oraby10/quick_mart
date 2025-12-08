import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/core/utils/styles.dart';
import 'package:quick_mart/core/utils/theme/extensions/theme_extension.dart';

class StepperItem extends StatelessWidget {
  const StepperItem({super.key, required this.icon, required this.text});
  final IconData icon;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(icon, size: 24.sp, color: context.customColors.secondaryColor),
        Text(
          text,
          style: Styles.captionSemiBold.copyWith(
            color: context.customColors.secondaryColor,
          ),
        ),
      ],
    );
  }
}
