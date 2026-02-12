import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:quick_mart/Features/Cart/domain/entities/cart_item_entity.dart';
import 'package:quick_mart/core/extensions/app_localization_extension.dart';
import 'package:quick_mart/core/utils/app_routes.dart';
import 'package:quick_mart/core/utils/styles.dart';

class ItemsCountReview extends StatelessWidget {
  const ItemsCountReview({super.key, required this.products});
  final List<CartItemEntity> products;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRoutes.kOrderItemsView,extra:products );
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('${context.locale.items} (${products.length})', style: Styles.body2Medium),
          Icon(Iconsax.arrow_right_3_outline, size: 32.sp),
        ],
      ),
    );
  }
}
