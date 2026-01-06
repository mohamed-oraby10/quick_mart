import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:quick_mart/Features/Home/presentation/manager/fetch_leatest_product_cubit/fetch_leatest_products_cubit.dart';
import 'package:quick_mart/Features/Home/presentation/manager/fetch_products_by_category_cubit/fetch_products_by_category_cubit.dart';
import 'package:quick_mart/Features/Home/presentation/views/widgets/search_filter_bottom_sheet.dart';

class FilterIconButton extends StatelessWidget {
  const FilterIconButton({
    super.key,
    required this.isProductsView,
    required this.title,
  });
  final String title;
  final bool isProductsView;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        showModalBottomSheet(
          context: context,
          builder: (_) {
            return MultiBlocProvider(
              providers: [
                BlocProvider.value(
                  value: context.read<FetchLeatestProductsCubit>(),
                ),
                BlocProvider.value(
                  value: context.read<FetchProductsByCategoryCubit>(),
                ),
              ],
              child: SearchFilterBottomSheet(
                isProductsView: isProductsView,
                categoryName: title,
              ),
            );
          },
        );
      },
      icon: Icon(Iconsax.setting_4_outline, size: 32.sp),
    );
  }
}
