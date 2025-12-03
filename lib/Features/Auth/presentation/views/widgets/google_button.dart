
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:quick_mart/core/utils/app_colors.dart';

class GoogleButton extends StatelessWidget {
  const GoogleButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: null,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Signup with Google'),
          SizedBox(width: 8.w),
          Icon(
            Iconsax.google_1_bold,
            size: 24.sp,
            color: AppColors.brandCyan,
          ),
        ],
      ),
    );
  }
}
