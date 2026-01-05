import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/Features/Checkout/presentation/views/widgets/card_details.dart';
import 'package:quick_mart/Features/Checkout/presentation/views/widgets/cvv_text_field.dart';
import 'package:quick_mart/Features/Checkout/presentation/views/widgets/expiration_text_field.dart';
import 'package:quick_mart/Features/Checkout/presentation/views/widgets/payment_methods_row.dart';
import 'package:quick_mart/core/extensions/app_localization_extension.dart';
import 'package:quick_mart/core/widgets/custom_app_bar.dart';
import 'package:quick_mart/core/widgets/main_button.dart';

class PaymentMethodViewBody extends StatelessWidget {
  const PaymentMethodViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.symmetric(horizontal: 16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10.h),
          CustomAppBar(text: context.locale.payment_method),
          PaymentMethodsRow(),
          SizedBox(height: 24.h),
          CardDetails(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [ExpirationTextField(), CvvTextField()],
          ),
          SizedBox(height: 125.h),
          MainButton(text: context.locale.save, onTap: () {}),
        ],
      ),
    );
  }
}
