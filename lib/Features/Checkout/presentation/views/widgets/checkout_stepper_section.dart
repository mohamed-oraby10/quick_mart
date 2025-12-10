import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/Features/Checkout/presentation/views/widgets/checkout_stepper.dart';
import 'package:quick_mart/core/widgets/custom_app_bar.dart';

class CheckoutStepperSection extends StatelessWidget {
  const CheckoutStepperSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 44.h),
        CustomAppBar(text: 'Checkout'),
        CheckoutStepper(),
        SizedBox(height: 24.h),
      ],
    );
  }
}
