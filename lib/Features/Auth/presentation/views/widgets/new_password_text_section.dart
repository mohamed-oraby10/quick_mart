import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/Features/Auth/presentation/views/widgets/forget_password_app_bar.dart';
import 'package:quick_mart/core/extensions/app_localization_extension.dart';
import 'package:quick_mart/core/utils/styles.dart';
import 'package:quick_mart/core/utils/theme/extensions/theme_extension.dart';

class NewPasswordTextSection extends StatelessWidget {
  const NewPasswordTextSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ForgetPasswordAppBar(text: '03/', title: context.locale.create_password),
        SizedBox(height: 24.h),
        Text(context.locale.new_password, style: Styles.heading2Bold),
        SizedBox(height: 8.h),
        Text(
          context.locale.enter_new_password,
          style: Styles.body2Regular.copyWith(
            color: context.customColors.secondaryColor,
          ),
        ),
        SizedBox(height: 16.h),
        Text(context.locale.password, style: Styles.body2Medium),
        SizedBox(height: 8.h),
      ],
    );
  }
}
