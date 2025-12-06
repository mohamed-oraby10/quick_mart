import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/Features/Cart/presentation/views/widgets/product_badge.dart';
import 'package:quick_mart/Features/Cart/presentation/views/widgets/product_colors_list.dart';
import 'package:quick_mart/Features/Cart/presentation/views/widgets/product_description.dart';
import 'package:quick_mart/Features/Cart/presentation/views/widgets/product_title_and_price.dart';
import 'package:quick_mart/Features/Cart/presentation/views/widgets/rating_row.dart';
import 'package:quick_mart/core/utils/app_colors.dart';
import 'package:quick_mart/core/utils/styles.dart';
import 'package:quick_mart/core/utils/theme/extensions/theme_extension.dart';

class ProductDetailsContainer extends StatelessWidget {
  const ProductDetailsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 497.h,
      width: double.infinity,
      decoration: BoxDecoration(
        color: context.isDarkMode ? AppColors.brandBlack : AppColors.brandWhite,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(32.r),
          topRight: Radius.circular(32.r),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 24.h),
              ProductBadge(),
              SizedBox(height: 6.h),
              ProductTitleAndPrice(),
              RatingRow(),
              ProductDescription(),
              SizedBox(height: 12.h),
              Text('Color', style: Styles.captionSemiBold),
              SizedBox(height: 8.h),
              ProductColorsList(),
            ],
          ),
        ),
      ),
    );
  }
}
