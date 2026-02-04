import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:quick_mart/Features/Cart/presentation/manager/cart_cubit/cart_cubit.dart';
import 'package:quick_mart/Features/Cart/presentation/views/widgets/buy_now_button.dart';
import 'package:quick_mart/Features/Home/domain/entities/product_entity.dart';
import 'package:quick_mart/core/extensions/app_localization_extension.dart';
import 'package:quick_mart/core/utils/functions/show_top_notifications.dart';
import 'package:quick_mart/core/widgets/row_elevated_button.dart';

class AddToCartButtonRow extends StatelessWidget {
  const AddToCartButtonRow({
    super.key,
    required this.product,
    required this.quantity,
  });
  final ProductEntity product;
  final int quantity;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 22.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BuyNowButton(product: product, quantity: quantity),
          RowElevatedButton(
            onTap: () {
              BlocProvider.of<CartCubit>(
                context,
              ).addToCart(product: product, quantity: 1);
              showTopNotification(
                context,
                context.locale.product_added_to_cart,
              );
            },
            text: context.locale.add_to_cart,
            icon: Iconsax.shopping_cart_outline,
          ),
        ],
      ),
    );
  }
}
