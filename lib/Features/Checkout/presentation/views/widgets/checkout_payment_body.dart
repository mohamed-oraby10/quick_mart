import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/Features/Checkout/presentation/views/widgets/card_text_field.dart';
import 'package:quick_mart/Features/Checkout/presentation/views/widgets/checkout_stepper_section.dart';
import 'package:quick_mart/Features/Checkout/presentation/views/widgets/cvv_text_field.dart';
import 'package:quick_mart/Features/Checkout/presentation/views/widgets/expiration_text_field.dart';
import 'package:quick_mart/core/widgets/app_text_field.dart';
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
              CheckoutStepperSection(),
              AppTextField(
                hint: 'Enter card holder name',
                text: 'Card Holder Name',
              ),
              CardTextField(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [ExpirationTextField(), CvvTextField()],
              ),
              SizedBox(height: 125.h),
              MainButton(text: 'Continue', onTap: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
