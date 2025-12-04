import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:quick_mart/Features/Auth/presentation/views/widgets/email_verify_text_section.dart';
import 'package:quick_mart/Features/Auth/presentation/views/widgets/forget_password_app_bar.dart';
import 'package:quick_mart/Features/Auth/presentation/views/widgets/proceed_button_section.dart';
import 'package:quick_mart/core/utils/app_routes.dart';

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
            ForgetPasswordAppBar(text: '02/'),
            EmailVerificationTextSection(),
            ProceedButtonSection(
              onTap: () =>
                  GoRouter.of(context).push(AppRoutes.kCreateNewPasswordView),
            ),
          ],
        ),
      ),
    );
  }
}
