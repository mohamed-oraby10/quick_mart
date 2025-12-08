import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:quick_mart/Features/Checkout/presentation/views/widgets/checkout_stepper_section.dart';
import 'package:quick_mart/core/utils/app_routes.dart';
import 'package:quick_mart/core/widgets/app_text_field.dart';
import 'package:quick_mart/core/widgets/main_button.dart';

class CheckoutViewBody extends StatelessWidget {
  const CheckoutViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CheckoutStepperSection(),
          AppTextField(hint: 'Enter full name', text: 'Full Name'),
          AppTextField(hint: 'Enter street address', text: 'Street Address'),
          MainButton(
            text: 'Save',
            onTap: () {
              GoRouter.of(context).push(AppRoutes.kCheckoutPaymentBody);
            },
          ),
        ],
      ),
    );
  }
}
