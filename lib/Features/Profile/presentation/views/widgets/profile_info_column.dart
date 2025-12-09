import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:quick_mart/Features/Profile/presentation/views/widgets/profile_item.dart';
import 'package:quick_mart/core/utils/styles.dart';

class ProfileInfoColumn extends StatelessWidget {
  const ProfileInfoColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 24.h),
          Text('Personal Information', style: Styles.captionSemiBold),
          SizedBox(height: 15.h),
          ProfileItem(icon: Iconsax.box_outline, title: 'Shipping Address'),
          ProfileItem(
            icon: Iconsax.card_tick_1_outline,
            title: 'Payment Method',
          ),
          ProfileItem(
            icon: Iconsax.receipt_edit_outline,
            title: 'Order History',
          ),
          SizedBox(height: 36.h),
          Text('Account Management', style: Styles.captionSemiBold),
          SizedBox(height: 15.h),
          ProfileItem(icon: Iconsax.lock_outline, title: 'Change Password'),
          ProfileItem(
            icon: Iconsax.mobile_outline,
            title: 'Dark Theme',
            isModeIcon: true,
          ),
        ],
      ),
    );
  }
}
