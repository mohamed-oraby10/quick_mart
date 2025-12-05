import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/Features/Home/presentation/views/widgets/product_color_item.dart';

class ProductColorsListView extends StatelessWidget {
  const ProductColorsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 24.h,
      width: 53.w,
      child: Stack(
        clipBehavior: Clip.none,
        children: List.generate(3, (index) {
          return Positioned(
            left: (index * 15).w,
            child: const ProductColorItem(),
          );
        }),
      ),
    );
  }
}
