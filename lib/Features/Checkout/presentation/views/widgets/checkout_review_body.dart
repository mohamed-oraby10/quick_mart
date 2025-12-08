import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/Features/Cart/presentation/views/widgets/order_info_section.dart';
import 'package:quick_mart/Features/Checkout/presentation/views/widgets/checkout_stepper_section.dart';
import 'package:quick_mart/Features/Checkout/presentation/views/widgets/shinpping_order_section.dart';
import 'package:quick_mart/core/widgets/main_button.dart';

class CheckoutReviewBody extends StatelessWidget {
  const CheckoutReviewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CheckoutStepperSection(),
              ShinppingOrderSection(),
              SizedBox(height: 16.h),
              OrderInfoSection(),
              SizedBox(height: 48.h),
              MainButton(text: 'Place Order', onTap: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
