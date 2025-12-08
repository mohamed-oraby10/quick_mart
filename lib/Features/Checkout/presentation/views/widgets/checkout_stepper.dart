import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:quick_mart/Features/Checkout/presentation/views/widgets/custom_divider.dart';
import 'package:quick_mart/Features/Checkout/presentation/views/widgets/stepper_item.dart';

class CheckoutStepper extends StatelessWidget {
  const CheckoutStepper({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Row(
        children: [
          StepperItem(icon: Iconsax.box_1_outline, text: 'Shipping'),
          CustomDivider(),
          StepperItem(icon: Iconsax.card_tick_1_outline, text: 'Payment'),
          CustomDivider(),
          StepperItem(icon: Iconsax.clipboard_tick_outline, text: 'Review'),
        ],
      ),
    );
  }
}
