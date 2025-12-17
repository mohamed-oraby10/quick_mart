import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/core/utils/styles.dart';
import 'package:quick_mart/core/utils/theme/extensions/theme_extension.dart';

class ChangePasswordTextSection extends StatelessWidget {
  const ChangePasswordTextSection({
    super.key,
    required this.title,
    required this.desc,
  });
  final String title, desc;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 12.h),
        Text(title, style: Styles.heading2Bold),
        SizedBox(height: 8.h),
        Text(
          desc,
          style: Styles.body2Regular.copyWith(
            color: context.customColors.secondaryColor,
          ),
        ),
      ],
    );
  }
}
