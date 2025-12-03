import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:quick_mart/core/utils/styles.dart';

class TextFeildsSection extends StatelessWidget {
  const TextFeildsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Email', style: Styles.body2Medium),
        SizedBox(height: 8.h),
        TextFormField(
          decoration: InputDecoration(hintText: 'Enter your email'),
        ),
        SizedBox(height: 16.h),
        Text('Password', style: Styles.body2Medium),
        SizedBox(height: 8.h),
        TextFormField(
          decoration: InputDecoration(
            hintText: 'Enter your password',
            suffixIcon: IconButton(
              onPressed: () {},
              icon: Icon(Iconsax.eye_outline, size: 24.sp),
            ),
          ),
        ),
      ],
    );
  }
}
