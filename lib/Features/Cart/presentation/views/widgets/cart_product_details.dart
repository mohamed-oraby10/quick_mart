import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/Features/Cart/domain/entities/cart_item_entity.dart';
import 'package:quick_mart/Features/Cart/presentation/views/widgets/product_quantity.dart';
import 'package:quick_mart/core/utils/styles.dart';
import 'package:quick_mart/core/utils/theme/extensions/theme_extension.dart';

class CartProductDetails extends StatelessWidget {
  const CartProductDetails({
    super.key,
    required this.isWishlist,
    required this.product,
  });
  final bool isWishlist;
  final CartItemEntity product;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
        product.  product.productTitle,
          style: Styles.body2Medium,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        SizedBox(height: 8.h),
        Text('\$${ product.product.productPrice}', style: Styles.captionSemiBold),
        Text(
          '\$${( product.product.productPrice + (( product.product.discount / 100) *  product.product.productPrice)).toStringAsFixed(2)}',
          style: Styles.overlineRegular.copyWith(
            decoration: TextDecoration.lineThrough,
            color: context.customColors.secondaryColor,
            decorationColor: context.customColors.secondaryColor,
          ),
        ),
        SizedBox(height: 8.h),
        ProductQuantity(
          isWishlist: isWishlist,
          cartItem: product,
        ),
      ],
    );
  }
}
