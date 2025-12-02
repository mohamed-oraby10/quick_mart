import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:quick_mart/core/utils/app_colors.dart';
import 'package:quick_mart/core/utils/styles.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        children: [
          SizedBox(height: 50.h),
          Row(
            children: [
              Icon(
                Iconsax.mobile_outline,
                size: 24.sp,
                color: AppColors.greyLight150,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.w),
                child: Text(
                  'Dark Theme',
                  style: Styles.body2Medium.copyWith(
                    color: AppColors.greyLight150,
                  ),
                ),
              ),
              Spacer(),
              FlutterSwitch(
                value: false,
                onToggle: (value) {},
                width: 35.w,
                height: 24.h,
                activeColor: AppColors.brandCyan,
                inactiveColor: AppColors.greyLight150,
                toggleSize: 16.sp,
              ),
            ],
          ),
        ],
      ),
    );
  }
}