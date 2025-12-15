import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:quick_mart/Features/Auth/presentation/views/widgets/login_button_bloc_consumer.dart';
import 'package:quick_mart/Features/Auth/presentation/views/widgets/text_feilds_section.dart';
import 'package:quick_mart/core/utils/app_routes.dart';
import 'package:quick_mart/core/widgets/custom_text_button.dart';

class LoginSection extends StatefulWidget {
  const LoginSection({super.key, required this.formKey});
  final GlobalKey<FormState> formKey;
  @override
  State<LoginSection> createState() => _LoginSectionState();
}

class _LoginSectionState extends State<LoginSection> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFeildsSection(
          emailController: emailController,
          passwordController: passwordController,
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 24.h),
            child: CustomTextButton(
              textButton: 'Forgot password?',
              onTap: () =>
                  GoRouter.of(context).push(AppRoutes.kConfirmationEmailView),
            ),
          ),
        ),
        LoginButtonBlocConsumer(
          emailController: emailController,
          passwordController: passwordController,
          formKey: widget.formKey,
        ),
      ],
    );
  }
}
