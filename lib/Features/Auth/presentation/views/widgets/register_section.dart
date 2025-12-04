import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:quick_mart/Features/Auth/presentation/views/widgets/google_button.dart';
import 'package:quick_mart/Features/Auth/presentation/views/widgets/text_feilds_section.dart';
import 'package:quick_mart/core/utils/app_routes.dart';
import 'package:quick_mart/core/utils/styles.dart';

class RegisterSection extends StatelessWidget {
  const RegisterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Full Name', style: Styles.body2Medium),
        SizedBox(height: 8.h),
        TextFormField(
          decoration: InputDecoration(hintText: 'Enter your full name'),
        ),
        SizedBox(height: 16.h),
        TextFeildsSection(),
        SizedBox(height: 24.h),
        ElevatedButton(
          onPressed: () {
            GoRouter.of(context).go(AppRoutes.kEmailVerificationView);
          },
          child: Text('Create Account'),
        ),
        SizedBox(height: 16.h),
        GoogleButton(text: 'Signup with Google'),
      ],
    );
  }
}
