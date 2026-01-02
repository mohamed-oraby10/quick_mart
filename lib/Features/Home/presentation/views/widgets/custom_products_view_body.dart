
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/Features/Home/presentation/views/widgets/exclusive_sales_grid_view_bloc_builder.dart';
import 'package:quick_mart/Features/Home/presentation/views/widgets/products_list_app_bar.dart';

class CustomProductsViewBody extends StatelessWidget {
  const CustomProductsViewBody({super.key, required this.appBarTitle});
  final String appBarTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.symmetric(horizontal: 16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 44.h),
          ProductsListAppBar(title: appBarTitle),
          Expanded(child: ExclusiveSalesGridViewBolcBuilder()),
        ],
      ),
    );
  }
}
