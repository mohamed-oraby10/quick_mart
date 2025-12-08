import 'package:flutter/material.dart';
import 'package:quick_mart/Features/Checkout/presentation/views/widgets/order_items_view_body.dart';

class OrderItemsView extends StatelessWidget {
  const OrderItemsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: SafeArea(child: OrderItemsViewBody()));
  }
}
