import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:quick_mart/Features/Cart/presentation/manager/cart_cubit/cart_cubit.dart';
import 'package:quick_mart/Features/Home/domain/entities/product_entity.dart';
import 'package:quick_mart/core/utils/functions/show_top_notifications.dart';
import 'package:quick_mart/core/widgets/row_elevated_button.dart';

class AddToCartButtonRow extends StatelessWidget {
  const AddToCartButtonRow({super.key, required this.product});
  final ProductEntity product;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 22.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 160.w,
            child: ElevatedButton(onPressed: null, child: Text('Buy Now')),
          ),
          RowElevatedButton(
            onTap: () {
              BlocProvider.of<CartCubit>(
                context,
              ).addToCart(product: product, quantity: 1);
                showTopNotification(
                context,
                "The product has been added to your cart",
              );
            },
            text: 'Add To Cart',
            icon: Iconsax.shopping_cart_outline,
          ),
        ],
      ),
    );
  }
}
