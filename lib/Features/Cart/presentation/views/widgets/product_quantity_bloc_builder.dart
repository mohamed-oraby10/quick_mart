import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quick_mart/Features/Cart/presentation/manager/cart_cubit/cart_cubit.dart';
import 'package:quick_mart/Features/Cart/presentation/manager/cart_cubit/cart_state.dart';
import 'package:quick_mart/Features/Cart/presentation/views/widgets/product_quantity.dart';

class ProductQuantityBuilder extends StatelessWidget {
  const ProductQuantityBuilder({
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

        return ProductQuantity(isWishlist: isWishlist, cartItem: cartItem);
      },
    );
  }
}
