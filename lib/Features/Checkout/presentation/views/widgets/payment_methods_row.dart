import 'package:flutter/material.dart';
import 'package:quick_mart/Features/Checkout/presentation/views/widgets/payment_method.dart';
import 'package:quick_mart/core/utils/assets_data.dart';

class PaymentMethodsRow extends StatelessWidget {
  const PaymentMethodsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        PaymentMethod(image: AssetsData.paypal),
        PaymentMethod(image: AssetsData.googlePay),
      ],
    );
  }
}
