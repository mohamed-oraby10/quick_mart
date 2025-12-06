import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/core/utils/app_colors.dart';
import 'package:quick_mart/core/utils/styles.dart';
import 'package:quick_mart/core/utils/theme/extensions/theme_extension.dart';

class CheckBoxBottomSheet extends StatelessWidget {
  const CheckBoxBottomSheet({super.key, this.onChanged, required this.text});
  final void Function(bool?)? onChanged;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 12.h),
      child: Row(
        children: [
          Transform.scale(
            scale: 1.5,
            child: Checkbox(
              value: false,
              onChanged: (value) {},
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusGeometry.circular(4.r),
              ),
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              activeColor: AppColors.generalBlue,
              checkColor: context.isDarkMode
                  ? AppColors.brandBlack
                  : AppColors.brandWhite,
            ),
          ),
          SizedBox(width: 5.w),
          Text(text, style: Styles.body2Medium),
        ],
      ),
    );
  }
}
