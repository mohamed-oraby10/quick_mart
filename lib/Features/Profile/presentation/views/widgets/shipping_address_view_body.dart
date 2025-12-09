import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/core/widgets/app_text_field.dart';
import 'package:quick_mart/core/widgets/custom_app_bar.dart';
import 'package:quick_mart/core/widgets/main_button.dart';

class ShippingAddressViewBody extends StatelessWidget {
  const ShippingAddressViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10.h),
          CustomAppBar(text: 'Shipping Address'),
          SizedBox(height: 12.h),
          AppTextField(hint: 'Enter full name', text: 'Full Name'),
          AppTextField(hint: 'Enter street address', text: 'Street Address'),
          SizedBox(height: 24.h),
          MainButton(text: 'Save', onTap: () {}),
        ],
      ),
    );
  }
}
