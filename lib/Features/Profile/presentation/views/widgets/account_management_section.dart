import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:quick_mart/Features/Profile/presentation/views/widgets/profile_item.dart';
import 'package:quick_mart/core/utils/app_routes.dart';
import 'package:quick_mart/core/utils/styles.dart';

class AccountManagementSection extends StatelessWidget {
  const AccountManagementSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Account Management', style: Styles.captionSemiBold),
        SizedBox(height: 15.h),
        ProfileItem(
          icon: Iconsax.lock_outline,
          title: 'Change Password',
          onTap: () => GoRouter.of(context).push(AppRoutes.kChangePasswordView),
        ),
        ProfileItem(
          icon: Iconsax.global_outline,
          title: 'Language',
          onTap: () => GoRouter.of(context).push(AppRoutes.kLanguageView),
        ),
        SizedBox(height: 10.h),
        ProfileItem(
          icon: Iconsax.mobile_outline,
          title: 'Dark Theme',
          isModeIcon: true,
        ),
      ],
    );
  }
}
