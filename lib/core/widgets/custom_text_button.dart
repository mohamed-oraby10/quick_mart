import 'package:flutter/material.dart';
import 'package:quick_mart/core/utils/app_colors.dart';
import 'package:quick_mart/core/utils/styles.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({super.key, required this.textButton});
  final String textButton;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text(
        textButton,
        style: Styles.body2Medium.copyWith(color: AppColors.brandCyan),
      ),
    );
  }
}
