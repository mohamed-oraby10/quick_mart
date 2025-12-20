import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/Features/Home/presentation/views/widgets/products_grid_view.dart';
import 'package:quick_mart/Features/Home/presentation/views/widgets/products_list_app_bar.dart';

class ProductsViewBody extends StatelessWidget {
  const ProductsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.symmetric(horizontal: 16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 44.h),
          ProductsListAppBar(title: 'Smart Watches'),
          // Expanded(child: ProductsGridView(product: null,)),
        ],
      ),
    );
  }
}
