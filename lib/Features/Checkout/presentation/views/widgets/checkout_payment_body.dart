import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:quick_mart/Features/Checkout/presentation/views/widgets/card_details.dart';
import 'package:quick_mart/Features/Checkout/presentation/views/widgets/checkout_stepper_section.dart';
import 'package:quick_mart/Features/Checkout/presentation/views/widgets/cvv_text_field.dart';
import 'package:quick_mart/Features/Checkout/presentation/views/widgets/expiration_text_field.dart';
import 'package:quick_mart/Features/Checkout/presentation/views/widgets/payment_methods_row.dart';
import 'package:quick_mart/core/extensions/app_localization_extension.dart';
import 'package:quick_mart/core/utils/app_routes.dart';
import 'package:quick_mart/core/widgets/main_button.dart';

class CheckoutPaymentBody extends StatelessWidget {
  const CheckoutPaymentBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CheckoutStepperSection(isPayment: true),
              PaymentMethodsRow(),
              SizedBox(height: 24.h),
              CardDetails(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [ExpirationTextField(), CvvTextField()],
              ),
              SizedBox(height: 125.h),
              MainButton(
                text: context.locale.follow_up,
                onTap: () {
                  GoRouter.of(context).push(AppRoutes.kCheckoutReviewBody);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
