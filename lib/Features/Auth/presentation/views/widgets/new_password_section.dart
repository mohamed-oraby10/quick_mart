import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/Features/Auth/presentation/views/widgets/password_text_field.dart';
import 'package:quick_mart/core/utils/styles.dart';
import 'package:quick_mart/core/widgets/main_button.dart';

class NewPasswordSection extends StatelessWidget {
  const NewPasswordSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        PasswordTextField(),
        SizedBox(height: 16.h),
        Text('Confirm Password', style: Styles.body2Medium),
        SizedBox(height: 8.h),
        PasswordTextField(),
        SizedBox(height: 24.h),
        MainButton(text: 'Save', onTap: () {}),
      ],
    );
  }
}
