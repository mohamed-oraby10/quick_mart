import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/core/utils/app_colors.dart';
import 'package:quick_mart/core/utils/styles.dart';
import 'package:quick_mart/core/utils/theme/extensions/theme_extension.dart';
import 'package:quick_mart/core/widgets/arrow_left_icon.dart';

class ForgetPasswordAppBar extends StatelessWidget {
  const ForgetPasswordAppBar({super.key, required this.text, this.title});
  final String text;
  final String? title;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        ArrowLeftIcon(),
        SizedBox(width: 12.w),
        Text(title ?? 'Forget Password', style: Styles.body2Medium),
        Spacer(),
        RichText(
          text: TextSpan(
            text: text,
            style: Styles.body2Medium.copyWith(
              color: context.customColors.modeColor
            ),
            children: [
              TextSpan(
                text: '03',
                style: Styles.body2Medium.copyWith(color: AppColors.grey100),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
