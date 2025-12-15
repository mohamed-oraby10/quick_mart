import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:quick_mart/core/utils/theme/extensions/theme_extension.dart';

class PasswordTextField extends StatefulWidget {
  const PasswordTextField({super.key, this.controller});
  final TextEditingController? controller;

  @override
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  bool isObscure = false;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isObscure,
      validator: (value) {
        if (value!.isEmpty) {
          return 'Field is required';
        }
        return null;
      },
      controller: widget.controller,
      decoration: InputDecoration(
        hintText: 'Enter your password',
        suffixIcon: IconButton(
          onPressed: () {
            setState(() {
              isObscure = !isObscure;
            });
          },
          icon: Icon(
            isObscure ? Iconsax.eye_slash_outline : Iconsax.eye_outline,
            size: 24.sp,
            color: context.customColors.modeColor,
          ),
        ),
      ),
    );
  }
}
