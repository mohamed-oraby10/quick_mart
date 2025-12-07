import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/Features/Cart/presentation/views/widgets/product_quantity.dart';
import 'package:quick_mart/core/utils/styles.dart';
import 'package:quick_mart/core/utils/theme/extensions/theme_extension.dart';

class CartProductDetails extends StatelessWidget {
  const CartProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Nike air jordan retro fas ',
          style: Styles.body2Medium,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        SizedBox(height: 8.h),
        Text('\$8.50', style: Styles.captionSemiBold),
        Text(
          '\$10.00',
          style: Styles.overlineRegular.copyWith(
            decoration: TextDecoration.lineThrough,
            color: context.customColors.secondaryColor,
            decorationColor: context.customColors.secondaryColor,
          ),
        ),
        SizedBox(height: 8.h),
        ProductQuantity(),
      ],
    );
  }
}
