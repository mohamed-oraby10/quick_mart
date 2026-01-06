import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:quick_mart/core/extensions/app_localization_extension.dart';
import 'package:quick_mart/core/utils/app_colors.dart';
import 'package:quick_mart/core/utils/app_routes.dart';
import 'package:quick_mart/core/utils/styles.dart';
import 'package:quick_mart/core/utils/theme/extensions/theme_extension.dart';

class ExclusiveSalesContainer extends StatelessWidget {
  const ExclusiveSalesContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 24.h),
      child: GestureDetector(
        onTap: () => GoRouter.of(context).push(AppRoutes.kExclusiveSalesView),
        child: Container(
          width: double.infinity,
          height: 148.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24.r),
            color: Colors.grey,
          ),
          child: Stack(
            fit: StackFit.expand,
            children: [
              Image.asset('assets/images/Banner.png', fit: BoxFit.cover),
              Positioned(
                left: 12.w,
                bottom: 10.h,
                child: Text(
                  context.locale.exclusive_sales,
                  style: Styles.heading2Bold.copyWith(
                    color: context.isDarkMode
                        ? AppColors.brandBlack
                        : AppColors.brandWhite,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
