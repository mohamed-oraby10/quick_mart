import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/Features/Cart/presentation/views/widgets/product_quantity.dart';
import 'package:quick_mart/Features/Home/domain/entities/product_entity.dart';
import 'package:quick_mart/core/utils/styles.dart';
import 'package:quick_mart/core/utils/theme/extensions/theme_extension.dart';

class CartProductDetails extends StatelessWidget {
  const CartProductDetails({
    super.key,
    required this.isWishlist,
    required this.product,
  });
  final bool isWishlist;
  final ProductEntity product;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          product.productTitle,
          style: Styles.body2Medium,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        SizedBox(height: 8.h),
        Text('\$${product.productPrice}', style: Styles.captionSemiBold),
        Text(
          '\$${(product.productPrice + ((product.discount / 100) * product.productPrice)).toStringAsFixed(2)}',
          style: Styles.overlineRegular.copyWith(
            decoration: TextDecoration.lineThrough,
            color: context.customColors.secondaryColor,
            decorationColor: context.customColors.secondaryColor,
          ),
        ),
        SizedBox(height: 8.h),
        ProductQuantity(isWishlist: isWishlist,product: product,),
      ],
    );
  }
}
