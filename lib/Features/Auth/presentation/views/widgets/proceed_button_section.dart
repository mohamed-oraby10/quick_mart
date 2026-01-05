import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/Features/Auth/presentation/views/widgets/pin_email.dart';
import 'package:quick_mart/core/extensions/app_localization_extension.dart';
import 'package:quick_mart/core/widgets/custom_text_button.dart';
import 'package:quick_mart/core/widgets/main_button.dart';

class ProceedButtonSection extends StatelessWidget {
  const ProceedButtonSection({super.key, this.onTap});
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        PinEmail(),
        CustomTextButton(textButton: context.locale.resend_code),
        SizedBox(height: 24.h),
        MainButton(text:context.locale.proceed, onTap: onTap),
      ],
    );
  }
}
