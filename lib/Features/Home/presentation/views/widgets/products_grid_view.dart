import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:quick_mart/Features/Home/presentation/views/widgets/leatest_product_item.dart';
import 'package:quick_mart/core/utils/app_routes.dart';

class ProductsGridView extends StatelessWidget {
  const ProductsGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.zero,
      physics: BouncingScrollPhysics(),
      itemCount: 10,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8,
        childAspectRatio: .7,
      ),
      itemBuilder: (context, index) {
        return LeatestProductItem(
          onTap: () => GoRouter.of(context).push(AppRoutes.kProductDetailsView),
        );
      },
    );
  }
}
