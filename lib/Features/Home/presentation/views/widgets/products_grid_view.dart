import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:quick_mart/Features/Home/domain/entities/product_entity.dart';
import 'package:quick_mart/Features/Home/presentation/views/widgets/leatest_product_item.dart';
import 'package:quick_mart/core/utils/app_routes.dart';

class ProductsGridView extends StatelessWidget {
  const ProductsGridView({super.key, required this.products});
  final List<ProductEntity> products;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.zero,
      physics: BouncingScrollPhysics(),
      itemCount: products.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8,
        childAspectRatio: .7,
      ),
      itemBuilder: (context, index) {
        return LeatestProductItem(
          onTap: () => GoRouter.of(context).push(AppRoutes.kProductDetailsView),
          product: products[index],
        );
      },
    );
  }
}
