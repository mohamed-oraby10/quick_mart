import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/Features/Cart/presentation/views/widgets/badge_item.dart';
import 'package:quick_mart/Features/Home/domain/entities/product_entity.dart';
import 'package:quick_mart/core/utils/app_colors.dart';

class ProductBadge extends StatelessWidget {
  const ProductBadge({super.key, required this.product});
  final ProductEntity product;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30.h,
      child: ListView.builder(
        itemCount: product.productTags.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return BadgeItem(
            text: product.productTags[index],
            bageColor: AppColors.generalBlue,
          );
        },
      ),
    );
  }
}
