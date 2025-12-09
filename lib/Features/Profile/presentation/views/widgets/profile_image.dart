import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/core/utils/app_colors.dart';

class ProfileImage extends StatelessWidget {
  const ProfileImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.h,
      width: 40.w,
      decoration: BoxDecoration(color: AppColors.grey100,borderRadius: BorderRadius.circular(8.r)),
    );
  }
}