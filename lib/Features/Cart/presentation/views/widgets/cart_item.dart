import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/Features/Cart/domain/entities/cart_item_entity.dart';
import 'package:quick_mart/Features/Cart/presentation/views/widgets/cart_item_delete.dart';
import 'package:quick_mart/Features/Cart/presentation/views/widgets/cart_product_details.dart';
import 'package:quick_mart/Features/Cart/presentation/views/widgets/cart_product_image.dart';

class CartItem extends StatelessWidget {
  const CartItem({
    super.key,
    required this.isWishlist,
    required this.isOrderView,
    required this.product,
  });
  final bool isWishlist;
  final bool isOrderView;
  final CartItemEntity product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.h),
      child: Row(
        children: [
          CartProductImage(image: product.product.productImages[0],),
          SizedBox(width: 8.w),
          Expanded(child: CartProductDetails(isWishlist: isWishlist, product: product.product,)),
          CartItemDelete(isWishlist: isWishlist, isOrderView: isOrderView, protect: null, product: product.product,),
        ],
      ),
    );
  }
}
