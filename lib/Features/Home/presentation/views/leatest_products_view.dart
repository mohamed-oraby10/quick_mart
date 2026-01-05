import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quick_mart/Features/Home/data/repos/home_repo_impl.dart';
import 'package:quick_mart/Features/Home/domain/use_cases/fetch_leatest_products_use_case.dart';
import 'package:quick_mart/Features/Home/domain/use_cases/filter_products_use_case.dart';
import 'package:quick_mart/Features/Home/presentation/manager/fetch_leatest_product_cubit/fetch_leatest_products_cubit.dart';
import 'package:quick_mart/Features/Home/presentation/views/widgets/custom_products_view_body.dart';
import 'package:quick_mart/core/extensions/app_localization_extension.dart';
import 'package:quick_mart/core/utils/functions/setup_service_locator.dart';
import 'package:quick_mart/core/widgets/app_bottom_navigation_bar.dart';

class LeatestProductsView extends StatelessWidget {
  const LeatestProductsView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) {
        final cubit = FetchLeatestProductsCubit(
          FetchLeatestProductsUseCase(getIt.get<HomeRepoImpl>()),
          FilterProductsUseCase(getIt.get<HomeRepoImpl>()),
        );
        cubit.fetchLeatestProducts(pageNumber: 1);
        return cubit;
      },
      child:  Scaffold(
        body: CustomProductsViewBody(appBarTitle: context.locale.latest_products),
        bottomNavigationBar: AppBottomNavigationBar(),
      ),
    );
  }
}
