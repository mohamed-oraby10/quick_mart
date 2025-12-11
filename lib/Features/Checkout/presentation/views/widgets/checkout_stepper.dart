import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:quick_mart/Features/Checkout/presentation/views/widgets/custom_divider.dart';
import 'package:quick_mart/Features/Checkout/presentation/views/widgets/stepper_item.dart';

class CheckoutStepper extends StatelessWidget {
  const CheckoutStepper({
    super.key,
    required this.isShipping,
    required this.isPayment,
    required this.isReview,
  });
  final bool isShipping, isPayment, isReview;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Row(
        children: [
          StepperItem(
            icon: (isPayment || isReview)
                ? Iconsax.box_1_bold
                : Iconsax.box_outline,
            text: 'Shipping',
            isActive: isShipping ? true : false,
            isCompleted: (isPayment || isReview) ? true : false,
          ),
          CustomDivider(),
          StepperItem(
            icon: isReview
                ? Iconsax.card_tick_bold
                : Iconsax.card_tick_1_outline,
            text: 'Payment',
            isActive: isPayment ? true : false,
            isCompleted: isReview ? true : false,
          ),
          CustomDivider(),
          StepperItem(
            icon: Iconsax.clipboard_tick_outline,
            text: 'Review',
            isActive: isReview ? true : false,
          ),
        ],
      ),
    );
  }
}
