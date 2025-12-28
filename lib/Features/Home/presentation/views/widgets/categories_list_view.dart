import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/Features/Home/presentation/manager/fetch_categories_list/fetch_categories_list_cubit.dart';
import 'package:quick_mart/Features/Home/presentation/views/widgets/category_home_item.dart';
import 'package:quick_mart/core/widgets/app_circular_progress_indicator.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 72.h,
      child: BlocBuilder<FetchCategoriesListCubit, FetchCategoriesListState>(
        builder: (context, state) {
          if (state is FetchCategoriesListSuccess) {
            return ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 4,
              itemBuilder: (context, index) {
                return CategoryHomeItem(
                  categoryEntity: state.categories[index],
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
