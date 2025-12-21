import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/Features/Home/domain/entities/product_entity.dart';
import 'package:quick_mart/core/utils/styles.dart';
import 'package:quick_mart/core/utils/theme/extensions/theme_extension.dart';

class ProductTitleAndPrice extends StatelessWidget {
  const ProductTitleAndPrice({super.key, required this.product});
  final ProductEntity product;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Text(
            product.productTitle,
            maxLines: 2,
            style: Styles.heading3Bold,
          ),
        ),
        SizedBox(width: 12.w),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('\$ ${product.productPrice}', style: Styles.heading3Bold),
            Text(
              '\$${(product.productPrice + ((product.discount / 100) * product.productPrice)).toStringAsFixed(2)}',
              style: Styles.body2Regular.copyWith(
                color: context.customColors.secondaryColor,
                decoration: TextDecoration.lineThrough,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
