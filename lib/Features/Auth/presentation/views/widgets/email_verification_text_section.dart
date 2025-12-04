import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/Features/Auth/presentation/views/widgets/digits_code.dart';
import 'package:quick_mart/core/utils/styles.dart';

class EmailVerificationTextSection extends StatelessWidget {
  const EmailVerificationTextSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DigitsCode(),
        SizedBox(height: 22.h),
        Text('Email Verification', style: Styles.heading2Bold),
        SizedBox(height: 8.h),
        Text(
          'Enter the 6-digit verification code send to your email address.',
          style: Styles.body2Regular,
        ),
      ],
    );
  }
}
