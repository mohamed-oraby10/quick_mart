import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/Features/Cart/presentation/views/widgets/add_to_cart_button_row.dart';
import 'package:quick_mart/Features/Cart/presentation/views/widgets/color_and_quantity_section.dart';
import 'package:quick_mart/Features/Cart/presentation/views/widgets/deatils_section.dart';
import 'package:quick_mart/Features/Home/domain/entities/product_entity.dart';
import 'package:quick_mart/core/utils/app_colors.dart';
import 'package:quick_mart/core/utils/theme/extensions/theme_extension.dart';

class ProductDetailsContainer extends StatelessWidget {
  const ProductDetailsContainer({super.key, required this.product});
  final ProductEntity product;
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
              DetailsSection(product: product),
              ColorAndQuantitySection(),
              AddToCartButtonRow(product: product,),
            ],
          ),
        ),
      ),
    );
  }
}
