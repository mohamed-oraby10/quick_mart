import 'package:flutter/material.dart';
import 'package:quick_mart/Features/Profile/presentation/views/widgets/shipping_address_view_body.dart';

class ShippingAddressView extends StatelessWidget {
  const ShippingAddressView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: SafeArea(child: ShippingAddressViewBody()));
  }
}
