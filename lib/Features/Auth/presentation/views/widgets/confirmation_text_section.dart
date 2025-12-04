import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/Features/Auth/presentation/views/widgets/forget_password_app_bar.dart';
import 'package:quick_mart/core/utils/styles.dart';
import 'package:quick_mart/core/utils/theme/extensions/theme_extension.dart';

class ConfirmationTextSection extends StatelessWidget {
  const ConfirmationTextSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ForgetPasswordAppBar(text: '01/'),
        SizedBox(height: 12.h),
        Text('Confirmation Email', style: Styles.heading2Bold),
        SizedBox(height: 8.h),
        Text(
          'Enter your email address for verification.',
          style: Styles.body2Regular.copyWith(
            color: context.customColors.secondaryColor,
          ),
        ),
      ],
    );
  }
}
