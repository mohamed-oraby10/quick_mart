import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/Features/Home/presentation/views/widgets/sub_category_grid_view.dart';
import 'package:quick_mart/core/widgets/custom_app_bar.dart';

class SubCategoryViewBody extends StatelessWidget {
  const SubCategoryViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.symmetric(horizontal: 16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 44.h),
          CustomAppBar(text: 'Electronics'),
          SubCategoryGridView()
        ],
      ),
    );
  }
}