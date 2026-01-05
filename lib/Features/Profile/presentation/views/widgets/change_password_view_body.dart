import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/Features/Auth/presentation/views/widgets/forget_password_app_bar.dart';
import 'package:quick_mart/Features/Profile/presentation/views/widgets/change_password_text_section.dart';
import 'package:quick_mart/Features/Profile/presentation/views/widgets/old_password_button_section.dart';
import 'package:quick_mart/core/extensions/app_localization_extension.dart';

class ChangePasswordViewBody extends StatelessWidget {
  const ChangePasswordViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10.h),
          ForgetPasswordAppBar(
            text: '01/',
            title: context.locale.change_password,
            count: '02',
          ),
          ChangePasswordTextSection(
            title: context.locale.old_password,
            desc: context.locale.old_password_desc,
          ),
          OldPasswordButtonSection(),
        ],
      ),
    );
  }
}
