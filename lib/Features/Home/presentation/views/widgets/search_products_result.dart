import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quick_mart/Features/Home/presentation/manager/find_searced_products_cubit/find_searched_products_cubit.dart';
import 'package:quick_mart/Features/Home/presentation/views/widgets/products_grid_view.dart';
import 'package:quick_mart/core/extensions/app_localization_extension.dart';
import 'package:quick_mart/core/widgets/app_circular_progress_indicator.dart';
import 'package:quick_mart/core/widgets/fail_text_state.dart';

class SearchProductsResult extends StatelessWidget {
  const SearchProductsResult({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FindSearchedProductsCubit, FindSearchedProductsState>(
      builder: (context, state) {
        if (state is FindSearchedProductsSuccess) {
          if (state.products.isEmpty) {
            return FailTextState(message: context.locale.no_results_found);
          }
          return ProductsGridView(products: state.products);
        } else if (state is FindSearchedProductsFailure) {
          return Center(child: Text(state.errMessage));
        } else {
          return AppCircularProgressIndicator();
        }
      },
    );
  }
}
