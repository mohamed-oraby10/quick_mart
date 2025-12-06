import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:quick_mart/core/utils/theme/extensions/theme_extension.dart';

class PasswordTextField extends StatelessWidget {
  const PasswordTextField({super.key, this.onChanged});
  final void Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      decoration: InputDecoration(
        hintText: 'Enter your Password',
        suffixIcon: IconButton(
          onPressed: () {},
          icon: Icon(
            Iconsax.eye_outline,
            size: 24.sp,
            color: context.customColors.modeColor
          ),
        ),
      ),
    );
  }
}
