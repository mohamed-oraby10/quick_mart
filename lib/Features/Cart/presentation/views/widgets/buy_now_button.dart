import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:quick_mart/Features/Cart/domain/entities/cart_item_entity.dart';
import 'package:quick_mart/Features/Home/domain/entities/product_entity.dart';
import 'package:quick_mart/core/extensions/app_localization_extension.dart';
import 'package:quick_mart/core/utils/app_colors.dart';
import 'package:quick_mart/core/utils/app_routes.dart';
import 'package:quick_mart/core/utils/theme/extensions/theme_extension.dart';

class BuyNowButton extends StatelessWidget {
  const BuyNowButton({
    super.key,
    required this.product,
    required this.quantity,
  });

  final ProductEntity product;
  final int quantity;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 160.w,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: context.isDarkMode
              ? AppColors.brandBlack
              : AppColors.brandWhite,
          foregroundColor: context.isDarkMode
              ? AppColors.brandCyan
              : AppColors.brandBlack,
        ),
        onPressed: () => GoRouter.of(context).push(
          AppRoutes.kCheckoutView,
          extra: [CartItemEntity(product: product, quantity: quantity)],
        ),
        child: Text(context.locale.buy_now),
      ),
    );
  }
}
