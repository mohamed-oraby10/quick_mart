import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/Features/Profile/presentation/views/widgets/password_field_section.dart';
import 'package:quick_mart/Features/Profile/presentation/views/widgets/update_password_button_bloc_consumer.dart';
import 'package:quick_mart/core/extensions/app_localization_extension.dart';

class NewPasswordButtonSection extends StatelessWidget {
  const NewPasswordButtonSection({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController passwordController = TextEditingController();
    TextEditingController confirmedPasswordController = TextEditingController();

    GlobalKey<FormState> formKey = GlobalKey();
    return Form(
      key: formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          PasswordFieldSection(controller: passwordController),
          SizedBox(height: 16.h),
          PasswordFieldSection(
            text: context.locale.confirm_password,
            controller: confirmedPasswordController,
          ),
          SizedBox(height: 24.h),
          UpdatePasswordButtonBlocConsumer(
            formKey: formKey,
            passwordController: passwordController,
            confirmedPasswordController: confirmedPasswordController,
          ),
        ],
      ),
    );
  }
}
