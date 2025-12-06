import 'package:flutter/material.dart';
import 'package:quick_mart/core/utils/styles.dart';
import 'package:quick_mart/core/utils/theme/extensions/theme_extension.dart';

class ProductTitleAndPrice extends StatelessWidget {
  const ProductTitleAndPrice({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Text(
            'Loop Silicone Strong Magnetic watch',
            maxLines: 2,
            style: Styles.heading3Bold,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('\$ 15.25', style: Styles.heading3Bold),
            Text(
              '\$ 20.00',
              style: Styles.body2Regular.copyWith(
                color: context.customColors.secondaryColor,
                decoration: TextDecoration.lineThrough,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
