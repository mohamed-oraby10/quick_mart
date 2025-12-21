import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:quick_mart/Features/Cart/presentation/views/widgets/product_colors_list.dart';
import 'package:quick_mart/Features/Cart/presentation/views/widgets/product_quantity.dart';
import 'package:quick_mart/core/utils/styles.dart';

class ColorAndQuantitySection extends StatelessWidget {
  const ColorAndQuantitySection({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Text('Color', style: Styles.captionSemiBold),
        // SizedBox(height: 8.h),
        // ProductColorsList(),
        // SizedBox(height: 12.h),
        Text('Quantity', style: Styles.captionSemiBold),
        SizedBox(height: 8.h),
        ProductQuantity(),
      ],
    );
  }
}
