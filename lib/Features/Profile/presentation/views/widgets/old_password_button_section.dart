import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:quick_mart/Features/Profile/presentation/views/widgets/password_field_section.dart';
import 'package:quick_mart/core/utils/app_routes.dart';
import 'package:quick_mart/core/widgets/main_button.dart';

class OldPasswordButtonSection extends StatelessWidget {
  const OldPasswordButtonSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        PasswordFieldSection(),
        SizedBox(height: 24.h),
        MainButton(
          text: 'Continue',
          onTap: () =>
              GoRouter.of(context).push(AppRoutes.kNewPasswordViewBody),
        ),
      ],
    );
  }
}
