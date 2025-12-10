import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/core/utils/styles.dart';
import 'package:quick_mart/core/utils/theme/extensions/theme_extension.dart';
import 'package:quick_mart/core/widgets/arrow_left_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ArrowLeftIcon(),
            SizedBox(width: 12.w),
            Text(text, style: Styles.body2Medium),
          ],
        ),
        Divider(color: context.customColors.buttonColor),
        SizedBox(height: 12.h),
      ],
    );
  }
}
