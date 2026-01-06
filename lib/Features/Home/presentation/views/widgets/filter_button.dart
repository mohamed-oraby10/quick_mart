import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:quick_mart/Features/Home/domain/emuns/filter_type.dart';
import 'package:quick_mart/Features/Home/presentation/manager/fetch_leatest_product_cubit/fetch_leatest_products_cubit.dart';
import 'package:quick_mart/Features/Home/presentation/manager/fetch_products_by_category_cubit/fetch_products_by_category_cubit.dart';
import 'package:quick_mart/Features/Home/presentation/manager/filter_cubit/filter_cubit.dart';
import 'package:quick_mart/core/extensions/app_localization_extension.dart';
import 'package:quick_mart/core/widgets/main_button.dart';

class FilterButton extends StatelessWidget {
  const FilterButton({super.key, this.isProductsView = false});
  final bool isProductsView;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FilterCubit, FilterType?>(
      builder: (context, state) {
        if (state == null) {
          return const SizedBox.shrink();
        }
        return MainButton(
          text: context.locale.apply,
          onTap: () {
            isProductsView
                ? BlocProvider.of<FetchProductsByCategoryCubit>(
                    context,
                  ).filterProducts(
                    filter: state == FilterType.highToLow
                        ? FilterType.highToLow
                        : FilterType.lowToHigh,
                  )
                : BlocProvider.of<FetchLeatestProductsCubit>(
                    context,
                  ).filterProducts(
                    filter: state == FilterType.highToLow
                        ? FilterType.highToLow
                        : FilterType.lowToHigh,
                  );
            GoRouter.of(context).pop();
          },
        );
      },
    );
  }
}
