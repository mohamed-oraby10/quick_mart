import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/core/utils/styles.dart';
import 'package:quick_mart/core/utils/theme/extensions/theme_extension.dart';

class TextSuccessfulSection extends StatelessWidget {
  const TextSuccessfulSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: 24.h),
        Text(
          'Your order has been placed successfully',
          textAlign: TextAlign.center,
          style: Styles.heading2Bold,
        ),
        SizedBox(height: 16.h),
        Text(
          'Thank you for choosing us! Feel free to continue shopping and explore our wide range of products. Happy Shopping!',
          style: Styles.body2Regular.copyWith(
            color: context.customColors.secondaryColor,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 24.h),
      ],
    );
  }
}
