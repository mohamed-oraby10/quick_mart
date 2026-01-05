import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/Features/Auth/presentation/views/widgets/auth_text_field.dart';
import 'package:quick_mart/Features/Auth/presentation/views/widgets/password_text_field.dart';
import 'package:quick_mart/core/extensions/app_localization_extension.dart';
import 'package:quick_mart/core/utils/styles.dart';

class TextFeildsSection extends StatelessWidget {
  const TextFeildsSection({
    super.key,
    this.emailController,
    this.passwordController,
  });
  final TextEditingController? emailController, passwordController;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(context.locale.email, style: Styles.body2Medium),
        SizedBox(height: 8.h),
        AuthTextField(hint: context.locale.enter_email, controller: emailController),
        SizedBox(height: 16.h),
        Text(context.locale.password, style: Styles.body2Medium),
        SizedBox(height: 8.h),
        PasswordTextField(controller: passwordController),
      ],
    );
  }
}
