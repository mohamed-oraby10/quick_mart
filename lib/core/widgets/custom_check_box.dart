import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/core/utils/app_colors.dart';
import 'package:quick_mart/core/utils/theme/extensions/theme_extension.dart';

class CustomCheckBox extends StatelessWidget {
  const CustomCheckBox({
    super.key,
    required this.fillColor,
    required this.scale,
    this.onChanged,
  });
  final Color fillColor;
  final double scale;
  final void Function(bool?)? onChanged;
  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: scale,
      child: Checkbox(
        value: true,
        onChanged: onChanged,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(4.r),
        ),
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        activeColor: fillColor,
        checkColor: context.isDarkMode
            ? AppColors.brandBlack
            : AppColors.brandWhite,
      ),
    );
  }
}
