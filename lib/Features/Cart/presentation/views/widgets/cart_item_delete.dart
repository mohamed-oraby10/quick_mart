import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:quick_mart/Features/Cart/presentation/manager/cart_cubit/cart_cubit.dart';
import 'package:quick_mart/Features/Home/domain/entities/product_entity.dart';
import 'package:quick_mart/core/utils/app_colors.dart';
import 'package:quick_mart/core/utils/theme/extensions/theme_extension.dart';
import 'package:quick_mart/core/widgets/custom_check_box.dart';
import 'package:quick_mart/core/widgets/delete_bottom_sheet.dart';

class CartItemDelete extends StatelessWidget {
  const CartItemDelete({
    super.key,
    required this.isWishlist,
    required this.isOrderView,
    required this.product,
    required protect,
  });
  final bool isWishlist;
  final bool isOrderView;
  final ProductEntity product;
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
          ? Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  onPressed: () => showModalBottomSheet(
                    context: context,
                    builder: (_) {
                      return BlocProvider.value(
                        value: context.read<CartCubit>(),
                        child: DeleteBottomSheet(
                          product: product,
                          text: 'wishlist',
                        ),
                      );
                    },
                  ),
                  icon: Icon(
                    Iconsax.trash_outline,
                    size: 24.sp,
                    color: AppColors.generalRed,
                  ),
                ),
              ],
            )
          : Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomCheckBox(fillColor: AppColors.brandCyan, scale: 1.2),
                IconButton(
                  onPressed: () => showModalBottomSheet(
                    context: context,
                    builder: (_) {
                      return BlocProvider.value(
                        value: context.read<CartCubit>(),
                        child: DeleteBottomSheet(
                          product: product,
                          text: 'cart',
                        ),
                      );
                    },
                  ),
                  icon: Icon(
                    Iconsax.trash_outline,
                    size: 24.sp,
                    color: AppColors.generalRed,
                  ),
                ),
              ],
            ),
    );
  }
}
