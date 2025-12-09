import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/Features/Profile/presentation/views/widgets/profile_info_column.dart';
import 'package:quick_mart/core/utils/app_colors.dart';
import 'package:quick_mart/core/utils/theme/extensions/theme_extension.dart';

class ProfileContainer extends StatelessWidget {
  const ProfileContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: context.isDarkMode
              ? AppColors.brandBlack
              : AppColors.brandWhite,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(24.r),
            topRight: Radius.circular(24.r),
          ),
        ),
        child: ProfileInfoColumn(),
      ),
    );
  }
}
