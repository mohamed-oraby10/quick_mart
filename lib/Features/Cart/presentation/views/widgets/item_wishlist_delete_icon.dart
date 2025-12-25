import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:quick_mart/Features/Home/domain/entities/product_entity.dart';
import 'package:quick_mart/Features/Wishlist/presentation/manager/cubit/wishlist_cubit.dart';
import 'package:quick_mart/core/utils/app_colors.dart';
import 'package:quick_mart/core/widgets/delete_bottom_sheet.dart';

class ItemWishlistDeleteIcon extends StatelessWidget {
  const ItemWishlistDeleteIcon({super.key, required this.product});

  final ProductEntity product;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        IconButton(
          onPressed: () => showModalBottomSheet(
            context: context,
            builder: (_) {
              return BlocProvider.value(
                value: context.read<WishlistCubit>(),
                child: DeleteBottomSheet(
                  product: product,
                  text: 'wishlist',
                  isWishlist: true,
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
    );
  }
}
