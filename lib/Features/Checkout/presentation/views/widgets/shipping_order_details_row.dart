import 'package:flutter/material.dart';
import 'package:quick_mart/Features/Checkout/presentation/views/widgets/mini_text_field.dart';

class ShippingOrderDetailsRow extends StatelessWidget {
  const ShippingOrderDetailsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        MiniTextField(hint: 'Enter Country', text: 'Country'),
        MiniTextField(hint: 'Enter Province', text: 'Province'),
      ],
    );
  }
}
