import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/Features/Auth/presentation/views/widgets/email_verify_text_section.dart';
import 'package:quick_mart/Features/Auth/presentation/views/widgets/proceed_button_section.dart';
import 'package:quick_mart/core/widgets/custom_app_bar.dart';

class VerifyEmail extends StatelessWidget {
  const VerifyEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 44.h),
            CustomAppBar(text: 'Forget Password'),
            EmailVerificationTextSection(),
            ProceedButtonSection(),
          ],
        ),
      ),
    );
  }
}
