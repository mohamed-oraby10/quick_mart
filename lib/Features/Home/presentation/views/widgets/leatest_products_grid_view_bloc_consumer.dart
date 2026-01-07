import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quick_mart/Features/Home/presentation/manager/fetch_leatest_product_cubit/fetch_leatest_products_cubit.dart';
import 'package:quick_mart/Features/Home/presentation/views/widgets/products_grid_view.dart';
import 'package:quick_mart/core/utils/functions/show_error_snak_bar.dart';
import 'package:quick_mart/core/widgets/app_circular_progress_indicator.dart';

class LeatestProductsGridViewBlocConsumer extends StatelessWidget {
  const LeatestProductsGridViewBlocConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FetchLeatestProductsCubit, FetchLeatestProductsState>(
      listener: (context, state) {
        if (state is FetchLeatestProductsFailure) {
          showErrorSnakBar(context, content: state.errMessage);
        }
      },
      builder: (context, state) {
        if (state is FetchLeatestProductsSuccess) {
          {
            return ProductsGridView(
              products: state.products,
              scrollPhysics: NeverScrollableScrollPhysics(),
            );
          }
        } else if (state is FetchLeatestProductsLoading) {
          return AppCircularProgressIndicator();
        } else {
          return Center(child: Text('No products found'));
        }
      },
    );
  }
}
