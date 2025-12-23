import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quick_mart/Features/Cart/presentation/manager/cart_cubit/cart_cubit.dart';
import 'package:quick_mart/Features/Cart/presentation/manager/cart_cubit/cart_state.dart';
import 'package:quick_mart/Features/Cart/presentation/views/widgets/cart_view_body.dart';
import 'package:quick_mart/Features/Cart/presentation/views/widgets/empty_cart.dart';
import 'package:quick_mart/core/widgets/app_bottom_navigation_bar.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<CartCubit, CartState>(
        builder: (context, state) {
          if (state is CartLoaded) {
            return CartViewBody(products: state.products);
          } else {
            return const EmptyCart();
          }
        },
      ),
      bottomNavigationBar: AppBottomNavigationBar(),
    );
  }
}
