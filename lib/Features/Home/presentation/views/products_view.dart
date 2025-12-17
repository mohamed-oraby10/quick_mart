import 'package:flutter/material.dart';
import 'package:quick_mart/Features/Home/presentation/views/widgets/products_view_body.dart';
import 'package:quick_mart/core/widgets/app_bottom_navigation_bar.dart';

class ProductsView extends StatelessWidget {
  const ProductsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ProductsViewBody(),
      bottomNavigationBar: AppBottomNavigationBar(),
    );
  }
}
