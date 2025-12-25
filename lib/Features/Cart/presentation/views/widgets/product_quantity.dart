import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/Features/Cart/domain/entities/cart_item_entity.dart';
import 'package:quick_mart/Features/Cart/presentation/views/widgets/decease_quantity_icon.dart';
import 'package:quick_mart/Features/Cart/presentation/views/widgets/increase_quantity_icon.dart';
import 'package:quick_mart/core/utils/styles.dart';
import 'package:quick_mart/core/utils/theme/extensions/theme_extension.dart';

class ProductQuantity extends StatelessWidget {
  const ProductQuantity({
    super.key,
    required this.isWishlist,
    required this.cartItem,
  });

  final bool isWishlist;
  final CartItemEntity cartItem;

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Container(
        padding: EdgeInsets.all(4.r),
        decoration: BoxDecoration(
          border: Border.all(color: context.customColors.buttonColor),
          borderRadius: BorderRadius.circular(8.r),
        ),
        child: Row(
          children: [
            DecreaseQuantityIcon(isWishlist: isWishlist, cartItem: cartItem),
            Text(cartItem.quantity.toString(), style: Styles.body1Medium),
            IncreaseQuantityIcon(isWishlist: isWishlist, cartItem: cartItem),
          ],
        ),
      ),
    );
  }
}
