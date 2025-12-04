import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:quick_mart/core/utils/app_routes.dart';
import 'package:quick_mart/core/utils/assets_data.dart';
import 'package:quick_mart/core/utils/styles.dart';
import 'package:quick_mart/core/utils/theme/extensions/theme_extension.dart';
import 'package:quick_mart/core/widgets/custom_container.dart';
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
          Stack(
            alignment: AlignmentDirectional.center,
            children: [
              CustomContainer(),
              Center(child: Image.asset(AssetsData.newPassword)),
            ],
          ),
          SizedBox(height: 24.h),
          Text(
            'New password set successfully',
            style: Styles.heading2Bold,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 16.h),
          Text(
            'Congratulations! Your password has been set successfully. Please proceed to the login screen to verify your account.',
            style: Styles.body2Regular.copyWith(
              color: context.customColors.secondaryColor,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 24.h),
          MainButton(
            text: 'Login',
            onTap: () => GoRouter.of(context).go(AppRoutes.kLoginView),
          ),
        ],
      ),
    );
  }
}
