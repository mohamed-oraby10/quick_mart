import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:quick_mart/core/utils/app_routes.dart';
import 'package:quick_mart/core/widgets/row_elevated_button.dart';

class AddToCartButtonRow extends StatelessWidget {
  const AddToCartButtonRow({super.key});

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
            onTap: () => GoRouter.of(context).push(AppRoutes.kCartView),
            text: 'Add To Cart',
            icon: Iconsax.shopping_cart_outline,
          ),
        ],
      ),
    );
  }
}
