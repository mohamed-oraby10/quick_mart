import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quick_mart/Features/Home/presentation/manager/fetch_leatest_product_cubit/fetch_leatest_products_cubit.dart';
import 'package:quick_mart/Features/Home/presentation/views/widgets/products_grid_view.dart';
import 'package:quick_mart/core/widgets/app_circular_progress_indicator.dart';

class ExclusiveSalesGridViewBolcBuilder extends StatelessWidget {
  const ExclusiveSalesGridViewBolcBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchLeatestProductsCubit, FetchLeatestProductsState>(
      builder: (context, state) {
        if (state is FetchLeatestProductsSuccess) {
          return ProductsGridView(products: state.products);
        } else if (state is FetchLeatestProductsFailure) {
          return Center(child: Text(state.errMessage));
        } else {
          return AppCircularProgressIndicator();
        }
      },
    );
  }
}
