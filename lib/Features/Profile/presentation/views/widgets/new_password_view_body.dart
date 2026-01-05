import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/Features/Auth/presentation/views/widgets/forget_password_app_bar.dart';
import 'package:quick_mart/Features/Profile/presentation/views/widgets/change_password_text_section.dart';
import 'package:quick_mart/Features/Profile/presentation/views/widgets/new_password_button_section.dart';
import 'package:quick_mart/core/extensions/app_localization_extension.dart';

class NewPasswordViewBody extends StatelessWidget {
  const NewPasswordViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10.h),
              ForgetPasswordAppBar(
                text: '02/',
                title: context.locale.change_password,
                count: '02',
              ),
              ChangePasswordTextSection(
                title: context.locale.new_password,
                desc: context.locale.new_password_desc,
              ),
              NewPasswordButtonSection(),
            ],
          ),
        ),
      ),
    );
  }
}
