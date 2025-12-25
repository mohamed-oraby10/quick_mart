import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/Features/Cart/presentation/manager/cart_cubit/cart_cubit.dart';
import 'package:quick_mart/Features/Cart/presentation/manager/cart_cubit/cart_state.dart';
import 'package:quick_mart/Features/Cart/presentation/views/widgets/decease_quantity_icon.dart';
import 'package:quick_mart/Features/Cart/presentation/views/widgets/increase_quantity_icon.dart';
import 'package:quick_mart/core/utils/styles.dart';
import 'package:quick_mart/core/utils/theme/extensions/theme_extension.dart';

class ProductQuantity extends StatelessWidget {
  const ProductQuantity({
    super.key,
    this.isWishlist = false,
    required this.productId,
  });

  final bool isWishlist;
  final int productId;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartCubit, CartState>(
      builder: (context, state) {
        if (state is! CartLoaded) {
          return const SizedBox();
        }

        final cartItem = state.cartItems
            .where((item) => item.product.productId == productId)
            .firstOrNull;

        if (cartItem == null) {
          return const SizedBox();
        }

        return IntrinsicWidth(
          child: Container(
            padding: EdgeInsets.all(4.r),
            decoration: BoxDecoration(
              border: Border.all(color: context.customColors.buttonColor),
              borderRadius: BorderRadius.circular(8.r),
            ),
            child: Row(
              children: [
                DecreaseQuantityIcon(
                  isWishlist: isWishlist,
                  cartItem: cartItem,
                ),
                Text(cartItem.quantity.toString(), style: Styles.body1Medium),
                IncreaseQuantityIcon(
                  isWishlist: isWishlist,
                  cartItem: cartItem,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
