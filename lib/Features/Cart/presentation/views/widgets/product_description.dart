import 'package:flutter/material.dart';
import 'package:quick_mart/Features/Home/domain/entities/product_entity.dart';
import 'package:quick_mart/core/utils/app_colors.dart';
import 'package:quick_mart/core/utils/styles.dart';
import 'package:quick_mart/core/utils/theme/extensions/theme_extension.dart';
import 'package:readmore/readmore.dart';

class ProductDescription extends StatelessWidget {
  const ProductDescription({super.key, required this.product});
  final ProductEntity product;
  @override
  Widget build(BuildContext context) {
    return ReadMoreText(
      product.desc,
      trimLines: 5,
      trimMode: TrimMode.Line,
      trimCollapsedText: 'Read more',
      trimExpandedText: 'Show less',
      moreStyle: Styles.body2Regular.copyWith(color: AppColors.brandCyan),
      lessStyle: Styles.body2Regular.copyWith(color: AppColors.brandCyan),
      style: Styles.body2Medium.copyWith(
        color: context.customColors.secondaryColor,
      ),
    );
  }
}
