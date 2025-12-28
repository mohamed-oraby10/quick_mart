import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quick_mart/Features/Home/data/repos/home_repo_impl.dart';
import 'package:quick_mart/Features/Home/domain/params/category_params.dart';
import 'package:quick_mart/Features/Home/domain/use_cases/fetch_products_by_category_use_case.dart';
import 'package:quick_mart/Features/Home/presentation/manager/fetch_products_by_category_cubit/fetch_products_by_category_cubit.dart';
import 'package:quick_mart/Features/Home/presentation/views/widgets/products_view_body.dart';
import 'package:quick_mart/core/utils/functions/setup_service_locator.dart';
import 'package:quick_mart/core/widgets/app_bottom_navigation_bar.dart';

class ProductsView extends StatelessWidget {
  const ProductsView({super.key, required this.categoryName});
  final String categoryName;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) {
        final cubit = FetchProductsByCategoryCubit(
          FetchProductsByCategoryUseCase(getIt.get<HomeRepoImpl>()),
        );
        cubit.fetchProductsByCategory(
          params: CategoryParams(categoryName: categoryName, pageNumber: 1),
        );
        return cubit;
      },
      child: Scaffold(
        body: ProductsViewBody(categoryName: categoryName),
        bottomNavigationBar: AppBottomNavigationBar(),
      ),
    );
  }
}
