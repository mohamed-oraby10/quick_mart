import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/core/utils/assets_data.dart';
import 'package:quick_mart/core/utils/styles.dart';
import 'package:quick_mart/core/widgets/custom_icon.dart';

class EmailVerificationTextSection extends StatelessWidget {
  const EmailVerificationTextSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            CustomIcon(imageUrl: AssetsData.passwordVerify),
            SizedBox(width: 8.w),
            Expanded(
              child: Text(
                '6-digit Verification code has been send to your email address.',
                style: Styles.captionSemiBold,
                maxLines: 2,
              ),
            ),
          ],
        ),
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
