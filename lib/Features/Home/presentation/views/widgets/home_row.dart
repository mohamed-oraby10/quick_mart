import 'package:flutter/material.dart';
import 'package:quick_mart/core/utils/app_colors.dart';
import 'package:quick_mart/core/utils/styles.dart';

class HomeRow extends StatelessWidget {
  const HomeRow({super.key, required this.text, this.onTap});
  final String text;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text, style: Styles.heading3Bold),
        Spacer(),
        GestureDetector(
          onTap: onTap,
          child: Text(
            'SEE ALL',
            style: Styles.overlineSemiBold.copyWith(color: AppColors.brandCyan),
          ),
        ),
      ],
    );
  }
}
