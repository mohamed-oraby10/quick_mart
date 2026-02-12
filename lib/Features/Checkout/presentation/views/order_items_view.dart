import 'package:flutter/material.dart';
import 'package:quick_mart/Features/Cart/domain/entities/cart_item_entity.dart';
import 'package:quick_mart/Features/Checkout/presentation/views/widgets/order_items_view_body.dart';

class OrderItemsView extends StatelessWidget {
  const OrderItemsView({super.key, required this.products});
  final List<CartItemEntity> products;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: OrderItemsViewBody(products: products)),
    );
  }
}
