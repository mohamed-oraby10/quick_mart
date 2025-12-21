import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/Features/Home/domain/entities/product_entity.dart';
import 'package:quick_mart/Features/Home/presentation/views/widgets/colors_row.dart';
import 'package:quick_mart/Features/Home/presentation/views/widgets/product_image.dart';
import 'package:quick_mart/core/utils/app_colors.dart';
import 'package:quick_mart/core/utils/styles.dart';

class LeatestProductItem extends StatelessWidget {
  const LeatestProductItem({super.key, this.onTap, required this.product});
  final void Function()? onTap;
  final ProductEntity product;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        height: 238.h,
        width: 160.w,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProductImage(product: product),
            ColorsRow(),
            Text(
              product.productTitle,
              style: Styles.body2Medium,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            Expanded(
              child: Text(
                '\$${product.productPrice}',
                style: Styles.captionSemiBold,
              ),
            ),
            Text(
              '\$${(product.productPrice + ((product.discount / 100) * product.productPrice)).toStringAsFixed(2)}',
              style: Styles.overlineRegular.copyWith(
                decoration: TextDecoration.lineThrough,
                color: AppColors.grey100,
                decorationColor: AppColors.grey100,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
