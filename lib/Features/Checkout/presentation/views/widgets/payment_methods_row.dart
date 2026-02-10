import 'package:flutter/material.dart';
import 'package:quick_mart/Features/Checkout/presentation/views/widgets/payment_method.dart';
import 'package:quick_mart/Features/Checkout/presentation/views/widgets/paypal_payment_button.dart';
import 'package:quick_mart/controller/paypal_payment_controller.dart';
import 'package:quick_mart/core/utils/assets_data.dart';

class PaymentMethodsRow extends StatelessWidget {
  const PaymentMethodsRow({super.key, required this.controller,  });
  final PayPalPaymentController controller;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        PayPalPaymentMethodButton(controller: controller,),
        PaymentMethod(image: AssetsData.googlePay),
      ],
    );
  }
}
