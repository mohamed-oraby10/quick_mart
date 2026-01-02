import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:quick_mart/Features/Home/presentation/manager/find_searced_products_cubit/find_searched_products_cubit.dart';
import 'package:quick_mart/Features/Home/presentation/views/widgets/search_filter_bottom_sheet.dart';
import 'package:quick_mart/Features/Home/presentation/views/widgets/search_products_result.dart';
import 'package:quick_mart/Features/Home/presentation/views/widgets/search_text_feild.dart';
import 'package:quick_mart/core/utils/styles.dart';
import 'package:quick_mart/core/utils/theme/extensions/theme_extension.dart';
import 'package:quick_mart/core/widgets/app_logo.dart';

class ProductsSearchBody extends StatelessWidget {
  const ProductsSearchBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.symmetric(horizontal: 16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 44.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppLogo(),
              IconButton(
                onPressed: () => GoRouter.of(context).pop(),
                icon: Icon(
                  FontAwesome.xmark_solid,
                  size: 24.sp,
                  color: context.customColors.modeColor,
                ),
              ),
            ],
          ),
          SizedBox(height: 16.h),
          SearchTextField(
            onChanged: (value) {
              BlocProvider.of<FindSearchedProductsCubit>(
                context,
              ).findSearchedProducts(productName: value);
            },
            onTap: () => showModalBottomSheet(
              context: context,
              builder: (context) => SearchFilterBottomSheet(),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 16.h),
            child: Text('RECENT SEARCH', style: Styles.captionSemiBold),
          ),
          Expanded(child: SearchProductsResult()),
        ],
      ),
    );
  }
}
