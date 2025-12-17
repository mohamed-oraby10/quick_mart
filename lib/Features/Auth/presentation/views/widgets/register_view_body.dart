import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:quick_mart/Features/Auth/presentation/views/widgets/auth_text_section.dart';
import 'package:quick_mart/Features/Auth/presentation/views/widgets/google_button.dart';
import 'package:quick_mart/Features/Auth/presentation/views/widgets/register_section.dart';
import 'package:quick_mart/core/utils/app_routes.dart';

class RegisterViewBody extends StatelessWidget {
  const RegisterViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formKey = GlobalKey();
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AuthTextSection(
                title: 'Signup',
                desc: 'Already have an account?',
                loginText: 'Login',
                onTap: () => GoRouter.of(context).go(AppRoutes.kLoginView),
              ),
              RegisterSection(formKey: formKey),
              SizedBox(height: 16.h),
              GoogleButton(text: 'Signup with Google'),
            ],
          ),
        ),
      ),
    );
  }
}
