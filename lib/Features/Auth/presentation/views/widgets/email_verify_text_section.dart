import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/core/extensions/app_localization_extension.dart';
import 'package:quick_mart/core/utils/styles.dart';
import 'package:quick_mart/core/utils/theme/extensions/theme_extension.dart';

class EmailVerificationTextSection extends StatelessWidget {
  const EmailVerificationTextSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 24.h),
        Text(context.locale.email_verification, style: Styles.heading2Bold),
        SizedBox(height: 8.h),
        Text(
          context.locale.enter_6_digit_code,
          style: Styles.body2Regular.copyWith(
            color: context.customColors.secondaryColor,
          ),
        ),
      ],
    );
  }
}
