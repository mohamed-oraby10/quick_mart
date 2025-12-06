import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductDetailsContainer extends StatelessWidget {
  const ProductDetailsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 497.h,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          
          topLeft: Radius.circular(32.r),
          topRight: Radius.circular(32.r),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [SizedBox(height: 24.h)],
        ),
      ),
    );
  }
}
