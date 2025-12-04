import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/Features/Auth/presentation/views/widgets/confirmation_text_section.dart';
import 'package:quick_mart/Features/Auth/presentation/views/widgets/send_email_section.dart';

class ConfirmationEmailViewBody extends StatelessWidget {
  const ConfirmationEmailViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 44.h),
          ConfirmationTextSection(),
          SizedBox(height: 16.h),
          SendEmailSection(),
        ],
      ),
    );
  }
}
