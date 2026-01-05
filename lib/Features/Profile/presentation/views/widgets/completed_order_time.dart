import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/core/extensions/app_localization_extension.dart';
import 'package:quick_mart/core/utils/app_colors.dart';
import 'package:quick_mart/core/utils/styles.dart';

class CompletedOrderTime extends StatelessWidget {
  const CompletedOrderTime({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: EdgeInsets.all(6.r),
          decoration: BoxDecoration(
            color: AppColors.generalBlue,
            borderRadius: BorderRadius.circular(8.r),
          ),
          child: Center(
            child: Text(
              context.locale.finished,
              style: Styles.overlineSemiBold.copyWith(
                color: AppColors.brandWhite,
              ),
            ),
          ),
        ),
        Text(
          '7 July, 2023',
          style: Styles.overlineSemiBold.copyWith(color: AppColors.grey100),
        ),
      ],
    );
  }
}
