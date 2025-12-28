import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quick_mart/Features/Home/data/repos/home_repo_impl.dart';
import 'package:quick_mart/Features/Home/domain/use_cases/fetch_categories_use_case.dart';
import 'package:quick_mart/Features/Home/presentation/manager/fetch_categories_list/fetch_categories_list_cubit.dart';
import 'package:quick_mart/Features/Home/presentation/views/widgets/categories_view_body.dart';
import 'package:quick_mart/core/utils/functions/setup_service_locator.dart';
import 'package:quick_mart/core/widgets/app_bottom_navigation_bar.dart';

class CategoriesView extends StatelessWidget {
  const CategoriesView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) {
        final cubit = FetchCategoriesListCubit(
          FetchCategoriesUseCase(getIt.get<HomeRepoImpl>()),
        );
        cubit.fetchCategoriesList(pageNumber: 1);
        return cubit;
      },
      child: const Scaffold(
        body: CategoriesViewBody(),
        bottomNavigationBar: AppBottomNavigationBar(),
      ),
    );
  }
}
