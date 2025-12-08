import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/Features/Cart/presentation/views/widgets/cart_item_delete.dart';
import 'package:quick_mart/Features/Cart/presentation/views/widgets/cart_product_details.dart';
import 'package:quick_mart/Features/Cart/presentation/views/widgets/cart_product_image.dart';

class CartItem extends StatelessWidget {
  const CartItem({super.key, required this.isWishlist, required this.isOrderView});
  final bool isWishlist;
    final bool isOrderView;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.h),
      child: Row(
        children: [
          CartProductImage(),
          SizedBox(width: 8.w),
          Expanded(child: CartProductDetails(isWishlist: isWishlist)),
          CartItemDelete(isWishlist: isWishlist, isOrderView: isOrderView,),
        ],
      ),
    );
  }
}
