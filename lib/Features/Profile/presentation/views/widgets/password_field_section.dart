import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/Features/Auth/presentation/views/widgets/password_text_field.dart';
import 'package:quick_mart/core/extensions/app_localization_extension.dart';
import 'package:quick_mart/core/utils/styles.dart';

class PasswordFieldSection extends StatelessWidget {
  const PasswordFieldSection({super.key, this.text});
  final String? text;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 16.h),
        Text(text ?? context.locale.password, style: Styles.body2Medium),
        SizedBox(height: 8.h),
        PasswordTextField(),
      ],
    );
  }
}
