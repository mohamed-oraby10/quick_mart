import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:quick_mart/core/utils/theme/extensions/theme_extension.dart';

class PasswordTextField extends StatelessWidget {
  const PasswordTextField({super.key, this.controller});
  final TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value!.isEmpty) {
          return 'Field is required';
        }
        return null;
      },
      controller: controller,
      decoration: InputDecoration(
        hintText: 'Enter your password',
        suffixIcon: IconButton(
          onPressed: () {},
          icon: Icon(
            Iconsax.eye_outline,
            size: 24.sp,
            color: context.customColors.modeColor,
          ),
        ),
      ),
    );
  }
}
