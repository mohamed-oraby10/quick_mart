import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/Features/Checkout/presentation/views/widgets/checkout_stepper_section.dart';
import 'package:quick_mart/Features/Checkout/presentation/views/widgets/items_count_review.dart';
import 'package:quick_mart/Features/Checkout/presentation/views/widgets/order_datails.dart';
import 'package:quick_mart/core/utils/styles.dart';
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
              ItemsCountReview(),
              SizedBox(height: 28.h),
              Text('Shipping Address', style: Styles.body1Medium),
              SizedBox(height: 12.h),
              OrderDatails(),
              SizedBox(height: 16.h),
              MainButton(text: 'Place Order', onTap: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
