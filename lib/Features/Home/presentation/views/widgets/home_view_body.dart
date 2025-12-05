import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/Features/Home/presentation/views/widgets/exclusive_sales_container.dart';
import 'package:quick_mart/Features/Home/presentation/views/widgets/home_app_bar.dart';
import 'package:quick_mart/Features/Home/presentation/views/widgets/home_row.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 44.h),
          HomeAppBar(),
          ExclusiveSalesContainer(),
          HomeRow(text: 'Categories'),
        ],
      ),
    );
  }
}
