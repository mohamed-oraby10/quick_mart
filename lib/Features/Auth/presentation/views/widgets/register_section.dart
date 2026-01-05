import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/Features/Auth/presentation/views/widgets/auth_text_field.dart';
import 'package:quick_mart/Features/Auth/presentation/views/widgets/register_button_bloc_consumer.dart';
import 'package:quick_mart/Features/Auth/presentation/views/widgets/text_feilds_section.dart';
import 'package:quick_mart/core/extensions/app_localization_extension.dart';
import 'package:quick_mart/core/utils/styles.dart';

class RegisterSection extends StatefulWidget {
  const RegisterSection({super.key, required this.formKey});
  final GlobalKey<FormState> formKey;

  @override
  State<RegisterSection> createState() => _RegisterSectionState();
}

class _RegisterSectionState extends State<RegisterSection> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(context.locale.full_name, style: Styles.body2Medium),
        SizedBox(height: 8.h),
        AuthTextField(hint: context.locale.enter_full_name, controller: nameController),
        SizedBox(height: 16.h),
        TextFeildsSection(
          emailController: emailController,
          passwordController: passwordController,
        ),
        SizedBox(height: 24.h),
        RegisterButtonBlocConsumer(
          formKey: widget.formKey,
          emailController: emailController,
          passwordController: passwordController,
          nameController: nameController,
        ),
      ],
    );
  }
}
