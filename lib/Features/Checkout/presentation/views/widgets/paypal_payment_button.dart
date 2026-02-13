import 'package:flutter/material.dart';
import 'package:flutter_paypal_payment/flutter_paypal_payment.dart';
import 'package:go_router/go_router.dart';
import 'package:quick_mart/Features/Cart/domain/entities/cart_item_entity.dart';
import 'package:quick_mart/Features/Checkout/presentation/views/widgets/payment_method.dart';
import 'package:quick_mart/controller/paypal_payment_controller.dart';
import 'package:quick_mart/core/utils/app_routes.dart';
import 'package:quick_mart/core/utils/assets_data.dart';
import 'package:quick_mart/core/utils/functions/show_error_snak_bar.dart';
import 'package:quick_mart/core/utils/functions/show_success_snack_bar.dart';

class PayPalPaymentMethodButton extends StatefulWidget {
  const PayPalPaymentMethodButton({
    super.key,
    required this.controller,
    required this.products,
    required this.totalPrice,
    this.isSuccessed = false,
  });
  final List<CartItemEntity> products;
  final num totalPrice;
  final PayPalPaymentController controller;
  final bool isSuccessed;

  @override
  State<PayPalPaymentMethodButton> createState() =>
      _PayPalPaymentMethodButtonState();
}

class _PayPalPaymentMethodButtonState extends State<PayPalPaymentMethodButton> {
  late bool isSuccessed;

  @override
  void initState() {
    super.initState();
    isSuccessed = widget.isSuccessed;
  }

  @override
  Widget build(BuildContext context) {
    return PaymentMethod(
      image: AssetsData.paypal,
      onTap: () {
        if (!widget.controller.canProceed()) {
          showErrorSnakBar(
            context,
            content: 'Cannot proceed with invalid credentials',
          );
          return;
        }
        final totalQuantity = widget.products.fold<int>(
          0,
          (sum, item) => sum + item.quantity,
        );

        final payment = widget.controller.createPaymentModel(
          totalQuantity,
          "Quick Mart Order",
          widget.totalPrice,
        );

        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => PaypalCheckoutView(
              sandboxMode: true,
              clientId: widget.controller.useCase.service.clientId,
              secretKey: widget.controller.useCase.service.secretKey,
              transactions: [payment.toTransaction()],
              note: "Contact us for any questions on your order.",
              onSuccess: (params) {
                setState(() {
                  isSuccessed = true;
                });
                GoRouter.of(context).pop();
                showSuccessSnakBar(context, content: 'Payment Success');
                GoRouter.of(context).push(AppRoutes.kCheckoutReviewView);
              },
              onError: (error) {
                Navigator.of(context).pop();
                showErrorSnakBar(context, content: 'Payment Error: $error');
              },
              onCancel: () {
                Navigator.of(context).pop();
                showSuccessSnakBar(context, content: 'Payment Cancelled');
              },
            ),
          ),
        );
      },
    );
  }
}
