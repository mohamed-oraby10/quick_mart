import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/Features/Home/presentation/views/widgets/colors_row.dart';
import 'package:quick_mart/Features/Home/presentation/views/widgets/product_image.dart';
import 'package:quick_mart/core/utils/app_colors.dart';
import 'package:quick_mart/core/utils/styles.dart';

class LeatestProductItem extends StatelessWidget {
  const LeatestProductItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 238.h,
      width: 160.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ProductImage(),
          ColorsRow(),
          Text(
            'Nike air jordan retro fas',
            style: Styles.body2Medium,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          Text('\$8.50', style: Styles.captionSemiBold),
          Text(
            '\$10.00',
            style: Styles.overlineRegular.copyWith(
              decoration: TextDecoration.lineThrough,
              color: AppColors.grey100,
              decorationColor: AppColors.grey100,
            ),
          ),
        ],
      ),
    );
  }
}
