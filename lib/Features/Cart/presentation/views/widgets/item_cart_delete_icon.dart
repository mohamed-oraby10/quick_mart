import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:quick_mart/Features/Cart/domain/entities/cart_item_entity.dart';
import 'package:quick_mart/Features/Cart/presentation/manager/cart_cubit/cart_cubit.dart';
import 'package:quick_mart/Features/Home/domain/entities/product_entity.dart';
import 'package:quick_mart/core/utils/app_colors.dart';
import 'package:quick_mart/core/widgets/custom_check_box.dart';
import 'package:quick_mart/core/widgets/delete_bottom_sheet.dart';

class ItemCartDeleteIcon extends StatelessWidget {
  const ItemCartDeleteIcon({
    super.key,
    required this.cartItem,
    required this.product,
  });

  final CartItemEntity cartItem;
  final ProductEntity product;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomCheckBox(
          fillColor: AppColors.brandCyan,
          scale: 1.2,
          isChecked: cartItem.isSelected,
          onChanged: (_) {
            context.read<CartCubit>().toggleItem(cartItem.product.productId);
          },
        ),
        IconButton(
          onPressed: () => showModalBottomSheet(
            context: context,
            builder: (_) {
              return BlocProvider.value(
                value: context.read<CartCubit>(),
                child: DeleteBottomSheet(product: product, text: 'cart'),
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
