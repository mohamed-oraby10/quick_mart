
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/core/utils/styles.dart';
import 'package:quick_mart/core/widgets/custom_app_bar.dart';

class NewPasswordTextSection extends StatelessWidget {
  const NewPasswordTextSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomAppBar(text: 'Create Password'),
        SizedBox(height: 24.h),
        Text('New Password', style: Styles.heading2Bold),
        SizedBox(height: 8.h),
        Text(
          'Enter your new password and remember it.',
          style: Styles.body2Regular,
        ),
        SizedBox(height: 16.h),
        Text('Password', style: Styles.body2Medium),
        SizedBox(height: 8.h),
      ],
    );
  }
}
