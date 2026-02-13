import 'package:flutter/material.dart';
import 'package:quick_mart/Features/Cart/domain/entities/cart_item_entity.dart';
import 'package:quick_mart/Features/Checkout/presentation/views/widgets/paypal_payment_button.dart';
import 'package:quick_mart/controller/paypal_payment_controller.dart';

class PaymentMethodsRow extends StatelessWidget {
  const PaymentMethodsRow({
    super.key,
    required this.controller,
    required this.products,
    required this.totalPrice, required this.isSuccessed,
  });
  final PayPalPaymentController controller;
  final List<CartItemEntity> products;
  final num totalPrice;
  final bool isSuccessed;
  @override
  Widget build(BuildContext context) {
    return
    // Row(
    //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //   children: [
    PayPalPaymentMethodButton(
      controller: controller,
      products: products,
      totalPrice: totalPrice,
      isSuccessed: isSuccessed,
    );
    // PaymentMethod(image: AssetsData.googlePay),
    //   ],
    // );
  }
}
