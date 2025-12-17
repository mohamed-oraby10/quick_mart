import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/Features/Auth/presentation/views/widgets/resend_link_reset_password_button_bloc_consumer.dart';
import 'package:quick_mart/Features/Auth/presentation/views/widgets/successful_body.dart';
import 'package:quick_mart/core/widgets/main_button.dart';

class ResetPasswordViewBody extends StatefulWidget {
  const ResetPasswordViewBody({super.key});

  @override
  State<ResetPasswordViewBody> createState() => _ResetPasswordViewBodyState();
}

class _ResetPasswordViewBodyState extends State<ResetPasswordViewBody> {
  TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 44.h),
            SuccessfulBody(
              title: 'Password reset email sent',
              desc: 'Password reset email link sent successfully.',
            ),
            SizedBox(height: 24.h),
            ResendLinkResetPasswordButtonBlocConsumer(
              emailController: emailController,
            ),
            SizedBox(height: 16.h),
            MainButton(text: 'Proceed', onTap: () {}),
          ],
        ),
      ),
    );
  }
}
