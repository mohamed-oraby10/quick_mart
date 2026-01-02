import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quick_mart/Features/Home/presentation/manager/fetch_products_by_category_cubit/fetch_products_by_category_cubit.dart';
import 'package:quick_mart/Features/Home/presentation/views/widgets/products_grid_view.dart';
import 'package:quick_mart/core/widgets/app_circular_progress_indicator.dart';
import 'package:quick_mart/core/widgets/fail_text_state.dart';

class ProductsGridViewBlocBuilder extends StatelessWidget {
  const ProductsGridViewBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<
      FetchProductsByCategoryCubit,
      FetchProductsByCategoryState
    >(
      builder: (context, state) {
        if (state is FetchProductsByCategorySuccess) {
          return ProductsGridView(products: state.products);
        } else if (state is FetchProductsByCategoryFailure) {
          return FailTextState(message: state.errMessage);
        } else {
          return AppCircularProgressIndicator();
        }
      },
    );
  }
}
