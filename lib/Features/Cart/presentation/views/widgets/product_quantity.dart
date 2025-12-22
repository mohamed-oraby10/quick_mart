import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:quick_mart/Features/Home/domain/entities/product_entity.dart';
import 'package:quick_mart/core/utils/app_colors.dart';
import 'package:quick_mart/core/utils/styles.dart';
import 'package:quick_mart/core/utils/theme/extensions/theme_extension.dart';

class ProductQuantity extends StatefulWidget {
  const ProductQuantity({
    super.key,
    this.isWishlist = false,
    required this.product,
  });
  final bool isWishlist;
  final ProductEntity product;

  @override
  State<ProductQuantity> createState() => _ProductQuantityState();
}

class _ProductQuantityState extends State<ProductQuantity> {
  int quantity = 0;
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
                      if (quantity > 0) {
                        setState(() {
                          quantity--;
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
            Text(quantity.toString(), style: Styles.body1Medium),
            IconButton(
              disabledColor: AppColors.grey100,
              onPressed: widget.isWishlist
                  ? null
                  : () {
                      if (quantity < widget.product.stockCount) {
                        setState(() {
                          quantity++;
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
