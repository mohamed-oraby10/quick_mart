import 'package:flutter/material.dart';
import 'package:quick_mart/Features/Checkout/presentation/views/widgets/mini_text_field.dart';
import 'package:quick_mart/core/extensions/app_localization_extension.dart';

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
          hint: context.locale.enter_country,
          text: context.locale.country,
          controller: countyController,
        ),
        MiniTextField(
          hint: context.locale.enter_province,
          text:context.locale.province,
          controller: provinceController,
        ),
      ],
    );
  }
}
