import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/core/utils/app_colors.dart';
import 'package:quick_mart/core/utils/styles.dart';

class OngoingOrderTime extends StatelessWidget {
  const OngoingOrderTime({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 166.w,
      padding: EdgeInsets.all(6.r),
      decoration: BoxDecoration(
        color: AppColors.generalRed,
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Center(
        child: Text(
          'Estimated time: 7 working days',
          style: Styles.overlineSemiBold.copyWith(color: AppColors.brandWhite),
        ),
      ),
    );
  }
}
