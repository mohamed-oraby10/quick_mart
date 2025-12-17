import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:quick_mart/Features/Auth/presentation/views/widgets/auth_text_section.dart';
import 'package:quick_mart/Features/Auth/presentation/views/widgets/google_button.dart';
import 'package:quick_mart/Features/Auth/presentation/views/widgets/login_section.dart';
import 'package:quick_mart/core/utils/app_routes.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formKey = GlobalKey();
    return SingleChildScrollView(
      child: Form(
        key: formKey,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AuthTextSection(
                title: 'Login',
                desc: 'Don’t have an account?',
                loginText: 'Signup',
                onTap: () => GoRouter.of(context).go(AppRoutes.kRegisterView),
              ),
              LoginSection(formKey: formKey),
              SizedBox(height: 16.h),
              GoogleButton(text: 'Login with Google'),
            ],
          ),
        ),
      ),
    );
  }
}
