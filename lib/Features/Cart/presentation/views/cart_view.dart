import 'package:flutter/material.dart';
import 'package:quick_mart/Features/Cart/presentation/views/widgets/cart_view_body.dart';
import 'package:quick_mart/Features/Home/domain/entities/product_entity.dart';
import 'package:quick_mart/core/widgets/app_bottom_navigation_bar.dart';

class CartView extends StatelessWidget {
  const CartView({super.key, required this.products});
  final List<ProductEntity> products;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
          // EmptyCard(),
          CartViewBody(products: products),
      bottomNavigationBar: AppBottomNavigationBar(),
    );
  }
}
