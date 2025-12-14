import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:quick_mart/core/widgets/row_elevated_button.dart';
import 'package:quick_mart/core/utils/app_routes.dart';
import 'package:quick_mart/core/widgets/custom_elevated_button.dart';

class LoginButtonRow extends StatelessWidget {
  const LoginButtonRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomElevatedButton(
          buttonText: 'Login',
          onTap: () => GoRouter.of(context).go(AppRoutes.kLoginView),
        ),
        SizedBox(width: 8.w),
        RowElevatedButton(
          onTap: () => GoRouter.of(context).go(AppRoutes.kRegisterView),
          text: 'Get started',
          icon: Iconsax.arrow_right_1_outline,
        ),
      ],
    );
  }
}
