import 'package:flutter/material.dart';
import 'package:quick_mart/core/utils/app_colors.dart';
import 'package:quick_mart/core/utils/styles.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({super.key, required this.textButton, this.onTap});
  final String textButton;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTap,
      child: Text(
        textButton,
        style: Styles.body2Medium.copyWith(color: AppColors.brandCyan),
      ),
    );
  }
}
