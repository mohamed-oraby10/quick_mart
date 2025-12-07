import 'package:flutter/material.dart';
// import 'package:quick_mart/Features/Cart/presentation/views/widgets/cart_view_body.dart';
import 'package:quick_mart/Features/Cart/presentation/views/widgets/empty_cart_body.dart';
import 'package:quick_mart/core/widgets/app_bottom_navigation_bar.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: EmptyCartBody(),
      // CartViewBody(),
      bottomNavigationBar: AppBottomNavigationBar(),
    );
  }
}
