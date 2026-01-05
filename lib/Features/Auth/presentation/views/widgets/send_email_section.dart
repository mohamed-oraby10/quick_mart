import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/Features/Auth/presentation/views/widgets/auth_text_field.dart';
import 'package:quick_mart/Features/Auth/presentation/views/widgets/reset_password_button_bloc_consumer.dart';
import 'package:quick_mart/core/extensions/app_localization_extension.dart';
import 'package:quick_mart/core/utils/styles.dart';

class SendEmailSection extends StatefulWidget {
  const SendEmailSection({super.key, required this.formKey});
  final GlobalKey<FormState> formKey;
  @override
  State<SendEmailSection> createState() => _SendEmailSectionState();
}

class _SendEmailSectionState extends State<SendEmailSection> {
  TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(context.locale.email, style: Styles.body2Medium),
        SizedBox(height: 8.h),
        AuthTextField(hint: context.locale.enter_email, controller: emailController),
        SizedBox(height: 24.h),
        ResetPasswordButttonBlocConsumer(
          emailController: emailController,
          formKey: widget.formKey,
        ),
      ],
    );
  }
}
