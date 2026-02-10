import 'package:flutter/material.dart';
import 'package:flutter_paypal_payment/flutter_paypal_payment.dart';
import 'package:go_router/go_router.dart';
import 'package:quick_mart/Features/Checkout/presentation/views/widgets/payment_method.dart';
import 'package:quick_mart/controller/paypal_payment_controller.dart';
import 'package:quick_mart/core/utils/app_routes.dart';
import 'package:quick_mart/core/utils/assets_data.dart';
import 'package:quick_mart/core/utils/functions/show_error_snak_bar.dart';
import 'package:quick_mart/core/utils/functions/show_success_snack_bar.dart';

class PayPalPaymentMethodButton extends StatelessWidget {
  const PayPalPaymentMethodButton({super.key, required this.controller});

  final PayPalPaymentController controller;

  @override
  Widget build(BuildContext context) {
    return PaymentMethod(
      image: AssetsData.paypal,
      onTap: () {
        if (!controller.canProceed()) {
          showErrorSnakBar(
            context,
            content: 'Cannot proceed with invalid credentials',
          );
          return;
        }

        final payment = controller.createPaymentModel(1.0, "Quick Mart Order");

        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => PaypalCheckoutView(
              sandboxMode: true,
              clientId: controller.useCase.service.clientId,
              secretKey: controller.useCase.service.secretKey,
              transactions: [payment.toTransaction()],
              note: "Contact us for any questions on your order.",
              onSuccess: (params) {
                GoRouter.of(context).pop();
                showSuccessSnakBar(context, content: 'Payment Success');
                GoRouter.of(context).push(AppRoutes.kCheckoutReviewBody);
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
