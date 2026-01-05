import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/core/extensions/app_localization_extension.dart';
import 'package:quick_mart/core/utils/styles.dart';
import 'package:quick_mart/core/utils/theme/extensions/theme_extension.dart';
import 'package:quick_mart/core/widgets/custom_app_bar.dart';

class ConfirmationTextSection extends StatelessWidget {
  const ConfirmationTextSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomAppBar(text: context.locale.forget_password),
        Text(context.locale.confirmation_email, style: Styles.heading2Bold),
        SizedBox(height: 8.h),
        Text(
          context.locale.enter_email,
          style: Styles.body2Regular.copyWith(
            color: context.customColors.secondaryColor,
          ),
        ),
      ],
    );
  }
}
