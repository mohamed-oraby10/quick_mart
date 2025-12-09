import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:quick_mart/Features/Profile/presentation/views/widgets/mode_switcher.dart';
import 'package:quick_mart/Features/Profile/presentation/views/widgets/profile_details.dart';
import 'package:quick_mart/core/utils/styles.dart';
import 'package:quick_mart/core/utils/theme/extensions/theme_extension.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20.h),
          ProfileDetails(),
          Row(
            children: [
              Icon(
                Iconsax.mobile_outline,
                size: 24.sp,
                color: context.customColors.secondaryColor,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.w),
                child: Text(
                  'Dark Theme',
                  style: Styles.body2Medium.copyWith(
                    color: context.customColors.secondaryColor,
                  ),
                ),
              ),
              Spacer(),
              ModeSwitcher(),
            ],
          ),
        ],
      ),
    );
  }
}
