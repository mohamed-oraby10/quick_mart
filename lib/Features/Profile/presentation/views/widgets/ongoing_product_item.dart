import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/Features/Cart/domain/entities/cart_item_entity.dart';
import 'package:quick_mart/Features/Cart/presentation/views/widgets/cart_product_details.dart';
import 'package:quick_mart/Features/Cart/presentation/views/widgets/cart_product_image.dart';

class OngoingProductItem extends StatelessWidget {
  const OngoingProductItem({super.key, required this.product});
  final CartItemEntity product;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4.h),
      child: Row(
        children: [
          CartProductImage(image: product.product.productImages[0]),
          SizedBox(width: 8.w),
          Expanded(
            child: CartProductDetails(
              isWishlist: false,
              product: product.product,
            ),
          ),
        ],
      ),
    );
  }
}
