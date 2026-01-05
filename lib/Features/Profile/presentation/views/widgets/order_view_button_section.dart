import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/core/extensions/app_localization_extension.dart';
import 'package:quick_mart/core/utils/app_colors.dart';
import 'package:quick_mart/core/utils/styles.dart';
import 'package:quick_mart/core/utils/theme/extensions/theme_extension.dart';

class OrderViewButtonSection extends StatelessWidget {
  const OrderViewButtonSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48.h,
      width: double.infinity,
      decoration: BoxDecoration(
        color: context.customColors.buttonColor,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Padding(
        padding: EdgeInsets.all(4.r),
        child: TabBar(
          dividerColor: Colors.transparent,
          padding: EdgeInsets.zero,
          indicator: BoxDecoration(
            color: AppColors.brandBlack,
            borderRadius: BorderRadius.circular(12.r),
          ),
          indicatorSize: TabBarIndicatorSize.tab,
          labelColor: AppColors.brandWhite,
          unselectedLabelColor: context.customColors.modeColor,
          tabs: [
            Text(context.locale.ongoing, style: Styles.button2),
            Text(context.locale.completed, style: Styles.button2),
          ],
        ),
      ),
    );
  }
}
