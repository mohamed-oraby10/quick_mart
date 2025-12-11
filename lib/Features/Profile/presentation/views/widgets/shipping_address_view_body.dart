import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/Features/Checkout/presentation/views/widgets/phone_number_text_field.dart';
import 'package:quick_mart/Features/Checkout/presentation/views/widgets/shipping_order_details_row.dart';
import 'package:quick_mart/core/utils/styles.dart';
import 'package:quick_mart/core/widgets/app_text_field.dart';
import 'package:quick_mart/core/widgets/custom_app_bar.dart';
import 'package:quick_mart/core/widgets/main_button.dart';

class ShippingAddressViewBody extends StatelessWidget {
  const ShippingAddressViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10.h),
            CustomAppBar(text: 'Shipping Address'),
            SizedBox(height: 12.h),
            AppTextField(hint: 'Enter full name', text: 'Full Name'),
            Text('Phone Number', style: Styles.body2Medium),
            PhoneNumberTextField(),
            AppTextField(hint: 'Enter street address', text: 'Street Address'),
            ShippingOrderDetailsRow(),
            AppTextField(hint: 'Enter City', text: 'City'),
            SizedBox(height: 24.h),
            MainButton(text: 'Save', onTap: () {}),
          ],
        ),
      ),
    );
  }
}
