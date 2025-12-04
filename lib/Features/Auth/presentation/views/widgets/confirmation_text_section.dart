import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/core/utils/styles.dart';
import 'package:quick_mart/core/widgets/custom_app_bar.dart';

class ConfirmationTextSection extends StatelessWidget {
  const ConfirmationTextSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomAppBar(text: 'Forgot Password'),
        SizedBox(height: 12.h),
        Text('Confirmation Email', style: Styles.heading2Bold),
        SizedBox(height: 8.h),
        Text(
          'Enter your email address for verification.',
          style: Styles.body2Regular,
        ),
      ],
    );
  }
}
