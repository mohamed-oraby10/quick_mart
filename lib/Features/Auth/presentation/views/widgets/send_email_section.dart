import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:quick_mart/Features/Auth/presentation/views/widgets/auth_text_field.dart';
import 'package:quick_mart/core/utils/app_routes.dart';
import 'package:quick_mart/core/utils/styles.dart';
import 'package:quick_mart/core/widgets/main_button.dart';

class SendEmailSection extends StatelessWidget {
  const SendEmailSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Email', style: Styles.body2Medium),
        SizedBox(height: 8.h),
        AuthTextField(hint: 'Enter your email'),
        SizedBox(height: 24.h),
        MainButton(
          onTap: () {
            GoRouter.of(context).push(AppRoutes.kVerifyEmail);
          },
          text: 'Send',
        ),
      ],
    );
  }
}
