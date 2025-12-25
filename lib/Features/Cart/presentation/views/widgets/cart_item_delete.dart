import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:quick_mart/Features/Cart/domain/entities/cart_item_entity.dart';
import 'package:quick_mart/Features/Cart/presentation/views/widgets/item_cart_delete_icon.dart';
import 'package:quick_mart/Features/Cart/presentation/views/widgets/item_wishlist_delete_icon.dart';
import 'package:quick_mart/Features/Home/domain/entities/product_entity.dart';
import 'package:quick_mart/core/utils/theme/extensions/theme_extension.dart';

class CartItemDelete extends StatelessWidget {
  const CartItemDelete({
    super.key,
    required this.isWishlist,
    required this.isOrderView,
    required this.product,
    required this.cartItem,
  });
  final bool isWishlist;
  final bool isOrderView;
  final ProductEntity product;
  final CartItemEntity cartItem;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120.h,
      child: isOrderView
          ? Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Iconsax.edit_2_outline,
                    size: 24.sp,
                    color: context.customColors.secondaryColor,
                  ),
                ),
              ],
            )
          : isWishlist
          ? ItemWishlistDeleteIcon(product: product)
          : ItemCartDeleteIcon(cartItem: cartItem, product: product),
    );
  }
}
