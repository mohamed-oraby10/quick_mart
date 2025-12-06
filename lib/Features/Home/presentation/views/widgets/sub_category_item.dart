import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quick_mart/core/utils/app_colors.dart';
import 'package:quick_mart/core/utils/styles.dart';

class SubCategoryItem extends StatelessWidget {
  const SubCategoryItem({super.key, this.onTap});
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                width: 160.w,
                height: 138.h,
                decoration: BoxDecoration(
                  color: AppColors.grey100,
                  borderRadius: BorderRadius.circular(24),
                ),
                child: SvgPicture.asset(
                  'assets/images/Vector.svg',
                  height: 100.h,
                  width: 150.w,
                ),
              ),
            ],
          ),
          SizedBox(height: 8.h),
          Text('Mobile phones', style: Styles.body2Medium),
        ],
      ),
    );
  }
}
