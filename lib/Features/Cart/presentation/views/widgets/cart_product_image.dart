import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/core/utils/assets_data.dart';

class CartProductImage extends StatelessWidget {
  const CartProductImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.h,
      width: 120.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        color: Colors.black,
      ),
      child: Image.asset(AssetsData.newPassword),
    );
  }
}
