import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:quick_mart/Features/Cart/presentation/manager/cart_cubit/cart_cubit.dart';
import 'package:quick_mart/Features/Cart/presentation/manager/cart_cubit/cart_state.dart';
import 'package:quick_mart/Features/Home/domain/entities/product_entity.dart';
import 'package:quick_mart/core/utils/app_colors.dart';
import 'package:quick_mart/core/utils/styles.dart';
import 'package:quick_mart/core/utils/theme/extensions/theme_extension.dart';

// ignore: must_be_immutable
class ProductQuantity extends StatefulWidget {
   ProductQuantity({
    super.key,
    this.isWishlist = false,
    required this.product,
    required this.quantity,
  });
  final bool isWishlist;
  final ProductEntity product;
  int quantity = 1;

  @override
  State<ProductQuantity> createState() => _ProductQuantityState();
}

class _ProductQuantityState extends State<ProductQuantity> {
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              padding: EdgeInsets.zero,
              onPressed: widget.isWishlist
                  ? null
                  : () {
                      if (widget.quantity > 0) {
                        setState(() {
                          widget.quantity--;
                        });
                      }
                    },
              disabledColor: AppColors.grey100,
              icon: Icon(
                Iconsax.minus_outline,
                size: 24.sp,
                color: context.customColors.modeColor,
              ),
            ),
            BlocBuilder<CartCubit, CartState>(
              builder: (context, state) {
                return Text(widget.quantity.toString(), style: Styles.body1Medium);
              },
            ),
            IconButton(
              disabledColor: AppColors.grey100,
              onPressed: widget.isWishlist
                  ? null
                  : () {
                      if (widget.quantity < widget.product.stockCount) {
                        setState(() {
                          widget.quantity++;
                        });
                      }
                    },
              icon: Icon(
                Iconsax.add_outline,
                size: 24.sp,
                color: context.customColors.modeColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
