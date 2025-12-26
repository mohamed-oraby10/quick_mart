import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:quick_mart/Features/Home/domain/entities/product_entity.dart';
import 'package:quick_mart/Features/Wishlist/presentation/manager/cubit/wishlist_cubit.dart';
import 'package:quick_mart/core/utils/app_colors.dart';
import 'package:quick_mart/core/utils/theme/extensions/theme_extension.dart';

class FavouriteIcon extends StatelessWidget {
  const FavouriteIcon({super.key, required this.product});
  final ProductEntity product;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WishlistCubit, WishlistState>(
      builder: (context, state) {
        bool isFavourite = false;

        if (state is WishlistLoaded) {
          isFavourite = state.cartItems.any(
            (p) => p.product.productId == product.productId,
          );
        }

        return Padding(
          padding: EdgeInsets.all(6.r),
          child: GestureDetector(
            onTap: () {
              context.read<WishlistCubit>().toggleItem(product);
            },
            child: Container(
              height: 24.h,
              width: 24.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24.r),
                color: context.customColors.modeColor,
              ),
              child: Center(
                child: Icon(
                  isFavourite ? Iconsax.heart_bold : Iconsax.heart_outline,
                  size: 12.sp,
                  color: isFavourite
                      ? AppColors.generalRed
                      : context.isDarkMode
                      ? AppColors.brandBlack
                      : AppColors.brandWhite,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
