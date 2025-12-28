import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:quick_mart/Features/Home/presentation/manager/fetch_categories_list/fetch_categories_list_cubit.dart';
import 'package:quick_mart/Features/Home/presentation/views/widgets/category_item.dart';
import 'package:quick_mart/core/utils/app_routes.dart';
import 'package:quick_mart/core/widgets/app_circular_progress_indicator.dart';

class CategoriesGridView extends StatelessWidget {
  const CategoriesGridView({super.key});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<FetchCategoriesListCubit, FetchCategoriesListState>(
        builder: (context, state) {
          if (state is FetchCategoriesListSuccess) {
            return GridView.builder(
              padding: EdgeInsets.zero,
              physics: BouncingScrollPhysics(),
              itemCount: state.categories.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
                childAspectRatio: 2,
              ),
              itemBuilder: (context, index) {
                return CategoryItem(
                  category: state.categories[index],
                  onTap: () {
                    GoRouter.of(context).push(
                      AppRoutes.kProductsView,
                      extra: state.categories[index].categoryName,
                    );
                  },
                );
              },
            );
          } else if (state is FetchCategoriesListFailure) {
            return Center(child: Text(state.errMessage));
          } else {
            return AppCircularProgressIndicator();
          }
        },
      ),
    );
  }
}
