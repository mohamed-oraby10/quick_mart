import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/Features/Home/presentation/manager/filter_cubit/filter_cubit.dart';
import 'package:quick_mart/Features/Home/presentation/views/widgets/bottom_sheet_list_view.dart';
import 'package:quick_mart/Features/Home/presentation/views/widgets/filter_button.dart';
import 'package:quick_mart/core/extensions/app_localization_extension.dart';
import 'package:quick_mart/core/utils/app_colors.dart';
import 'package:quick_mart/core/utils/styles.dart';
import 'package:quick_mart/core/utils/theme/extensions/theme_extension.dart';

class SearchFilterBottomSheet extends StatelessWidget {
  const SearchFilterBottomSheet({super.key, this.isProductsView = false});
  final bool isProductsView;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FilterCubit(),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        height: 280.h,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(24.r),
            topRight: Radius.circular(24.r),
          ),
          color: context.isDarkMode
              ? AppColors.brandBlack
              : AppColors.brandWhite,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 32.h),
            Text(context.locale.filter, style: Styles.body1Medium),
            SizedBox(height: 16.h),
            BottomSheetListView(),
            FilterButton(isProductsView: isProductsView),
          ],
        ),
      ),
    );
  }
}
