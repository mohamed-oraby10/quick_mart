import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:quick_mart/Features/Cart/domain/entities/cart_item_entity.dart';
import 'package:quick_mart/Features/Cart/presentation/manager/cart_cubit/cart_cubit.dart';

class DecreaseQuantityIcon extends StatelessWidget {
  const DecreaseQuantityIcon({
    super.key,
    required this.isWishlist,
    required this.cartItem,
  });

  final bool isWishlist;
  final CartItemEntity cartItem;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: isWishlist
          ? null
          : () {
              BlocProvider.of<CartCubit>(
                context,
              ).decreaseQuantity(product: cartItem.product);
            },
      icon: Icon(Iconsax.minus_outline, size: 24.sp),
    );
  }
}
