import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:quick_mart/Features/Cart/presentation/views/widgets/product_quantity.dart';
import 'package:quick_mart/core/utils/app_colors.dart';
import 'package:quick_mart/core/utils/assets_data.dart';
import 'package:quick_mart/core/utils/styles.dart';
import 'package:quick_mart/core/utils/theme/extensions/theme_extension.dart';
import 'package:quick_mart/core/widgets/custom_check_box.dart';

class CartItem extends StatelessWidget {
  const CartItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.h),
      child: Row(
        children: [
          Container(
            height: 120.h,
            width: 120.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.r),
              color: Colors.black,
            ),
            child: Image.asset(AssetsData.newPassword),
          ),

          SizedBox(width: 8.w),
          Expanded(
            child: Column(
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
            ),
          ),
          SizedBox(
            height: 120.h,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomCheckBox(fillColor: AppColors.brandCyan, scale: 1.2),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Iconsax.trash_outline,
                    size: 24.sp,
                    color: AppColors.generalRed,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
