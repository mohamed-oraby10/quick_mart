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
        color: Colors.black,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(32.r),
          topRight: Radius.circular(32.r),
        ),
      ),
    );
  }
}
