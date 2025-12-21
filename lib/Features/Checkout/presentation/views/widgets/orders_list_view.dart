import 'package:flutter/material.dart';
import 'package:quick_mart/Features/Cart/presentation/views/widgets/cart_item.dart';

class OrdersListView extends StatelessWidget {
  const OrdersListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 2,
        physics: BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          // return CartItem(isWishlist: true, isOrderView: true);
        },
      ),
    );
  }
}
