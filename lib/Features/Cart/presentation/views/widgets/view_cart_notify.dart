import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:quick_mart/core/extensions/app_localization_extension.dart';
import 'package:quick_mart/core/utils/app_colors.dart';
import 'package:quick_mart/core/utils/app_routes.dart';
import 'package:quick_mart/core/utils/assets_data.dart';
import 'package:quick_mart/core/utils/styles.dart';
import 'package:quick_mart/core/utils/theme/extensions/theme_extension.dart';
import 'package:quick_mart/core/widgets/custom_icon.dart';

class ViewCartNotify extends StatelessWidget {
  const ViewCartNotify({super.key, required this.message});
  final String message;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        color: context.isDarkMode ? AppColors.brandBlack : AppColors.brandWhite,
      ),
      child: Row(
        children: [
          CustomIcon(imageUrl: AssetsData.passwordVerify),
          SizedBox(width: 8.w),
          Expanded(child: Text(message, style: Styles.captionSemiBold)),
          SizedBox(width: 8.w),
          TextButton(
            onPressed: () => GoRouter.of(context).push(AppRoutes.kCartView),
            child: Text(
              context.locale.view_cart,
              style: Styles.captionSemiBold.copyWith(
                color: AppColors.brandCyan,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
