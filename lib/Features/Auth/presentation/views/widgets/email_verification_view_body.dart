import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/Features/Auth/presentation/views/widgets/verify_app_bar_section.dart';
import 'package:quick_mart/Features/Auth/presentation/views/widgets/proceed_button_section.dart';

class EmailVerificationViewBody extends StatelessWidget {
  const EmailVerificationViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 44.h),
          VerifyAppBarSection(),
          ProceedButtonSection(),
        ],
      ),
    );
  }
}
