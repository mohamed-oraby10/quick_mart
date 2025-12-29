import 'package:flutter/material.dart';
import 'package:quick_mart/Features/Checkout/presentation/views/widgets/mini_text_field.dart';

class ShippingOrderDetailsRow extends StatelessWidget {
  const ShippingOrderDetailsRow({
    super.key,
    required this.countyController,
    required this.provinceController,
  });
  final TextEditingController countyController, provinceController;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        MiniTextField(
          hint: 'Enter Country',
          text: 'Country',
          controller: countyController,
        ),
        MiniTextField(
          hint: 'Enter Province',
          text: 'Province',
          controller: provinceController,
        ),
      ],
    );
  }
}
