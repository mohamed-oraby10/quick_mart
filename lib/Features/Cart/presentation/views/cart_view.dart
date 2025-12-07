import 'package:flutter/material.dart';
import 'package:quick_mart/Features/Cart/presentation/views/widgets/cart_view_body.dart';
// import 'package:quick_mart/core/utils/assets_data.dart';
import 'package:quick_mart/core/widgets/app_bottom_navigation_bar.dart';
// import 'package:quick_mart/core/widgets/empty_body.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:
      // EmptyBody(
      //   image: AssetsData.cart,
      //   title: 'Your cart is empty',
      //   desc:
      //       'Looks like you have not added anything in your cart. Go ahead and explore top categories.',
      // ),
      CartViewBody(),
      bottomNavigationBar: AppBottomNavigationBar(),
    );
  }
}
