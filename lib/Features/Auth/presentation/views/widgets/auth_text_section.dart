import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/core/utils/app_colors.dart';
import 'package:quick_mart/core/utils/styles.dart';
import 'package:quick_mart/core/utils/theme/extensions/theme_extension.dart';
import 'package:quick_mart/core/widgets/app_logo.dart';

class AuthTextSection extends StatelessWidget {
  const AuthTextSection({
    super.key,
    required this.title,
    required this.desc,
    required this.loginText,
    this.onTap,
  });
  final String title;
  final String desc;
  final String loginText;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 44.h),
        AppLogo(),
        SizedBox(height: 24.h),
        Text(title, style: Styles.heading2Bold),
        SizedBox(height: 8.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              desc,
              style: Styles.body2Regular.copyWith(
                color: context.customColors.secondaryColor,
              ),
            ),
            GestureDetector(
              onTap: onTap,
              child: Text(
                loginText,
                style: Styles.body2Medium.copyWith(color: AppColors.brandCyan),
              ),
            ),
          ],
        ),
        SizedBox(height: 32.h),
      ],
    );
  }
}
