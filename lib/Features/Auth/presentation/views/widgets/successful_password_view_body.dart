import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:quick_mart/Features/Auth/presentation/views/widgets/successful_body.dart';
import 'package:quick_mart/core/extensions/app_localization_extension.dart';
import 'package:quick_mart/core/utils/app_routes.dart';
import 'package:quick_mart/core/widgets/main_button.dart';

class SuccessfulPasswordViewBody extends StatelessWidget {
  const SuccessfulPasswordViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.symmetric(horizontal: 16.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 44.h),
          SuccessfulBody(
            title: context.locale.new_password_success_message,
            desc:
                'Congratulations! Your password has been set successfully. Please proceed to the login screen to verify your account.',
          ),
          SizedBox(height: 24.h),
          MainButton(
            text: context.locale.login,
            onTap: () => GoRouter.of(context).go(AppRoutes.kLoginView),
          ),
        ],
      ),
    );
  }
}
