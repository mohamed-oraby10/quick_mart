import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/Features/Cart/presentation/views/widgets/badge_item.dart';
import 'package:quick_mart/core/utils/app_colors.dart';

class ProductBadge extends StatelessWidget {
  const ProductBadge({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        BadgeItem(text: 'Top Rated', bageColor: AppColors.generalBlue),
        SizedBox(width: 6.w),
        BadgeItem(text: 'Free Shipping', bageColor: AppColors.generalGreen),
      ],
    );
  }
}
