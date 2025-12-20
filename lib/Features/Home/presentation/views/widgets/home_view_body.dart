import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:quick_mart/Features/Home/presentation/manager/fetch_leatest_product_cubit/fetch_leatest_products_cubit.dart';
import 'package:quick_mart/Features/Home/presentation/views/widgets/categories_list_view.dart';
import 'package:quick_mart/Features/Home/presentation/views/widgets/exclusive_sales_container.dart';
import 'package:quick_mart/Features/Home/presentation/views/widgets/home_app_bar.dart';
import 'package:quick_mart/Features/Home/presentation/views/widgets/home_row.dart';
import 'package:quick_mart/Features/Home/presentation/views/widgets/products_grid_view.dart';
import 'package:quick_mart/core/utils/app_routes.dart';
import 'package:quick_mart/core/utils/functions/show_error_snak_bar.dart';
import 'package:quick_mart/core/widgets/app_circular_progress_indicator.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 44.h),
          HomeAppBar(),
          ExclusiveSalesContainer(),
          HomeRow(
            text: 'Categories',
            onTap: () => GoRouter.of(context).push(AppRoutes.kCategoriesView),
          ),
          CategoriesListView(),
          SizedBox(height: 24.h),
          HomeRow(text: 'Latest Products'),
          SizedBox(height: 12.h),
          Expanded(
            child:
                BlocConsumer<
                  FetchLeatestProductsCubit,
                  FetchLeatestProductsState
                >(
                  listener: (context, state) {
                    if (state is FetchLeatestProductsFailure) {
                      showErroeSnakBar(context, content: state.errMessage);
                      print(  state.errMessage);
                    }
                  },
                  builder: (context, state) {
                    if (state is FetchLeatestProductsSuccess) {
                      {
                        return ProductsGridView(products: state.products);
                      }
                    } else if (state is FetchLeatestProductsLoading) {
                      return AppCircularProgressIndicator();
                    } else {
                      return Center(child: Text('No products found'));
                    }
                  },
                ),
          ),
        ],
      ),
    );
  }
}
