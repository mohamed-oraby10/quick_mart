import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:quick_mart/core/utils/app_colors.dart';

class LogoutButton extends StatelessWidget {
  const LogoutButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        Iconsax.logout_1_outline,
        size: 32.sp,
        color: AppColors.brandWhite,
      ),
      onPressed: () {},
    );
  }
}
