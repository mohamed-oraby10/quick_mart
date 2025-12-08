import 'package:flutter/material.dart';
import 'package:quick_mart/Features/Checkout/presentation/views/widgets/order_place_view_body.dart';

class OrderPlaceSuccessfullyView extends StatelessWidget {
  const OrderPlaceSuccessfullyView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: SafeArea(child: OrderPlaceViewBody()));
  }
}
