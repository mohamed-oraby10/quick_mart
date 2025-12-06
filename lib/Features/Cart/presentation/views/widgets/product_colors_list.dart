import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/Features/Cart/presentation/views/widgets/product_colors_item.dart';

class ProductColorsList extends StatelessWidget {
  const ProductColorsList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 32.h,
      width: double.infinity,
      child: ListView.builder(
        padding: EdgeInsets.zero,
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return ProductColorsItem();
        },
      ),
    );
  }
}
