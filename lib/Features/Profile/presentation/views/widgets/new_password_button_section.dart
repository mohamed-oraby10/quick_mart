import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/Features/Profile/presentation/views/widgets/password_field_section.dart';
import 'package:quick_mart/core/widgets/main_button.dart';

class NewPasswordButtonSection extends StatelessWidget {
  const NewPasswordButtonSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        PasswordFieldSection(),
        SizedBox(height: 16.h),
        PasswordFieldSection(text: 'Confirm Password'),
        SizedBox(height: 24.h),
        MainButton(text: 'Save', onTap: () {}),
      ],
    );
  }
}
