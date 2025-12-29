import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:quick_mart/Features/Checkout/presentation/views/widgets/checkout_stepper_section.dart';
import 'package:quick_mart/Features/Checkout/presentation/views/widgets/phone_number_text_field.dart';
import 'package:quick_mart/Features/Checkout/presentation/views/widgets/shipping_order_details_row.dart';
import 'package:quick_mart/core/utils/app_routes.dart';
import 'package:quick_mart/core/utils/styles.dart';
import 'package:quick_mart/core/widgets/app_text_field.dart';
import 'package:quick_mart/core/widgets/main_button.dart';

class CheckoutViewBody extends StatefulWidget {
  const CheckoutViewBody({super.key});

  @override
  State<CheckoutViewBody> createState() => _CheckoutViewBodyState();
}

class _CheckoutViewBodyState extends State<CheckoutViewBody> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CheckoutStepperSection(isShipping: true),
              AppTextField(hint: 'Enter full name', text: 'Full Name'),
              Text('Phone Number', style: Styles.body2Medium),
              SizedBox(height: 8.h),
              PhoneNumberTextField(),
              AppTextField(
                hint: 'Enter street address',
                text: 'Street Address',
              ),
              ShippingOrderDetailsRow(),
              AppTextField(hint: 'Enter City', text: 'City'),
              SizedBox(height: 12.h),
              MainButton(
                text: 'Save',
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    GoRouter.of(context).push(AppRoutes.kCheckoutPaymentBody);
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
