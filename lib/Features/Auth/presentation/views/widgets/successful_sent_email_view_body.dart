import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:quick_mart/Features/Auth/presentation/views/widgets/successful_body.dart';
import 'package:quick_mart/core/utils/app_routes.dart';
import 'package:quick_mart/core/widgets/custom_text_button.dart';
import 'package:quick_mart/core/widgets/main_button.dart';

class SuccessfulSentEmailViewBody extends StatelessWidget {
  const SuccessfulSentEmailViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SuccessfulBody(
            title: 'Email confirmation sent successfully',
            desc: 'We’ve sent a verification link to your email',
          ),
          SizedBox(height: 24.h),
          CustomTextButton(textButton: 'Resend link'),
          SizedBox(height: 16.h),
          MainButton(
            text: 'I verified my email',
            onTap: () => GoRouter.of(context).go(AppRoutes.kLoginView),
          ),
        ],
      ),
    );
  }
}
