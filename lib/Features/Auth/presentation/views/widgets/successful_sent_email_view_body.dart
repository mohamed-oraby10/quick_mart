import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/Features/Auth/presentation/views/widgets/resend_link_bloc_consumer.dart';
import 'package:quick_mart/Features/Auth/presentation/views/widgets/successful_body.dart';
import 'package:quick_mart/Features/Auth/presentation/views/widgets/verified_email_button_bloc_consumer.dart';

class SuccessfulSentEmailViewBody extends StatelessWidget {
  const SuccessfulSentEmailViewBody({super.key});

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
              title: 'Email confirmation sent successfully',
              desc: 'We’ve sent a verification link to your email',
            ),
            SizedBox(height: 24.h),
            ResendLinkBlocConsumer(),
            SizedBox(height: 16.h),
            VerifiedEmailButtonBlocConsumer(),
          ],
        ),
      ),
    );
  }
}
