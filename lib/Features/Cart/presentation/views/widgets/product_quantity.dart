import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:quick_mart/Features/Cart/presentation/manager/cart_cubit/cart_cubit.dart';
import 'package:quick_mart/Features/Cart/presentation/manager/cart_cubit/cart_state.dart';
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
                IconButton(
                  onPressed: isWishlist
                      ? null
                      : () {
                          BlocProvider.of<CartCubit>(
                            context,
                          ).decreaseQuantity(product: cartItem.product);
                        },
                  icon: Icon(Iconsax.minus_outline, size: 24.sp),
                ),
                Text(cartItem.quantity.toString(), style: Styles.body1Medium),
                IconButton(
                  onPressed: isWishlist
                      ? null
                      : () {
                          if (cartItem.quantity <=
                              cartItem.product.stockCount) {
                            context.read<CartCubit>().addToCart(
                              product: cartItem.product,
                              quantity: 1,
                            );
                          }
                        },
                  icon: Icon(Iconsax.add_outline, size: 24.sp),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
