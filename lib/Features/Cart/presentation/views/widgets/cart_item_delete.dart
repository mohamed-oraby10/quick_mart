import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:quick_mart/core/utils/app_colors.dart';
import 'package:quick_mart/core/widgets/custom_check_box.dart';

class CartItemDelete extends StatelessWidget {
  const CartItemDelete({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
    );
  }
}
