import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:quick_mart/core/utils/app_colors.dart';
import 'package:quick_mart/core/utils/styles.dart';
import 'package:quick_mart/core/utils/theme/extensions/theme_extension.dart';

class ProductQuantity extends StatelessWidget {
  const ProductQuantity({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 98.w,
      decoration: BoxDecoration(
        border: Border.all(color: context.customColors.buttonColor),
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            padding: EdgeInsets.zero,
            onPressed: null,
            disabledColor: AppColors.grey100,
            icon: Icon(Iconsax.minus_outline, size: 24.sp),
          ),
          Text('0', style: Styles.body1Medium),
          IconButton(
            onPressed: () {},
            icon: Icon(Iconsax.add_outline, size: 24.sp),
          ),
        ],
      ),
    );
  }
}
