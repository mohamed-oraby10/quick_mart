import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:quick_mart/core/extensions/app_localization_extension.dart';
import 'package:quick_mart/core/utils/app_colors.dart';
import 'package:quick_mart/core/utils/styles.dart';
import 'package:quick_mart/core/utils/theme/extensions/theme_extension.dart';

class DisabledAppButton extends StatelessWidget {
  const DisabledAppButton({super.key});
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        backgroundColor: context.isDarkMode
            ? AppColors.brandBlack
            : AppColors.brandWhite,
        foregroundColor: context.isDarkMode
            ? AppColors.brandCyan
            : AppColors.brandBlack,
        side: BorderSide(color: context.customColors.buttonColor),
      ),
      onPressed: () {
        GoRouter.of(context).pop();
      },
      child: Text(context.locale.cancel, style: Styles.button2),
    );
  }
}
