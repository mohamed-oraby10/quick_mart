import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:quick_mart/Features/Home/domain/entities/product_entity.dart';
import 'package:quick_mart/Features/Home/presentation/views/widgets/leatest_product_item.dart';
import 'package:quick_mart/core/utils/app_routes.dart';

class ProductsGridView extends StatelessWidget {
  const ProductsGridView({
    super.key,
    required this.products,
    this.scrollPhysics = const BouncingScrollPhysics(),
  });
  final List<ProductEntity> products;
  final ScrollPhysics? scrollPhysics;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.zero,
      physics: scrollPhysics,
      shrinkWrap: true,
      itemCount: products.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8,
        mainAxisSpacing: 20,
        childAspectRatio: .75,
      ),
      itemBuilder: (context, index) {
        return LeatestProductItem(
          onTap: () => GoRouter.of(
            context,
          ).push(AppRoutes.kProductDetailsView, extra: products[index]),
          product: products[index],
        );
      },
    );
  }
}
