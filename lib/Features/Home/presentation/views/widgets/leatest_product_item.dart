import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/Features/Home/presentation/views/widgets/colors_row.dart';
import 'package:quick_mart/core/utils/app_colors.dart';

class LeatestProductItem extends StatelessWidget {
  const LeatestProductItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 227.h,
      width: 160.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 160.w,
            height: 138.h,
            decoration: BoxDecoration(
              color: AppColors.grey100,
              borderRadius: BorderRadius.circular(24),
            ),
          ),
          ColorsRow(),
        ],
      ),
    );
  }
}
