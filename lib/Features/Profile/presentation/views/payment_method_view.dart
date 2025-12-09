import 'package:flutter/material.dart';
import 'package:quick_mart/Features/Profile/presentation/views/widgets/payment_method_view_body.dart';

class PaymentMethodView extends StatelessWidget {
  const PaymentMethodView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: PaymentMethodViewBody()),
    );
  }
}