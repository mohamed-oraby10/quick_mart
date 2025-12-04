import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pinput/pinput.dart';
import 'package:quick_mart/core/utils/app_colors.dart';
import 'package:quick_mart/core/utils/styles.dart';
import 'package:quick_mart/core/utils/theme/extensions/theme_extension.dart';

class PinEmail extends StatelessWidget {
  const PinEmail({super.key, this.onChanged});
  final void Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.h),
      child: Pinput(
        onChanged: (value) {},
        length: 6,
        defaultPinTheme: PinTheme(
          width: 48.w,
          height: 48.h,
          padding: EdgeInsets.symmetric(horizontal: 8.w),
          decoration: BoxDecoration(
            border: Border.all(
              color: context.isDarkMode
                  ? AppColors.greyDark50
                  : AppColors.greyLight50,
              width: 2.w,
            ),
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        focusedPinTheme: PinTheme(
          textStyle: Styles.button1,
          width: 48.w,
          height: 48.h,
          padding: EdgeInsets.symmetric(horizontal: 8.w),
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.brandCyan, width: 2.w),
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
    );
  }
}
