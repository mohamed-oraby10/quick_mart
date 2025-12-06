import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:quick_mart/core/utils/app_colors.dart';
import 'package:quick_mart/core/utils/styles.dart';

class SearchResults extends StatelessWidget {
  const SearchResults({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Smart watch', style: Styles.body2Medium),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Iconsax.send_outline,
              size: 24.sp,
              color: AppColors.grey100,
            ),
          ),
        ],
      ),
    );
  }
}
