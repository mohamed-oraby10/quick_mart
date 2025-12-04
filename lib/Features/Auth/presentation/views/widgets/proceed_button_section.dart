import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/Features/Auth/presentation/views/widgets/pin_email.dart';
import 'package:quick_mart/core/widgets/custom_text_button.dart';

class ProceedButtonSection extends StatelessWidget {
  const ProceedButtonSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        PinEmail(),
        CustomTextButton(textButton: 'Resend Code'),
        SizedBox(height: 24.h),
        ElevatedButton(onPressed: () {}, child: Text('Proceed')),
      ],
    );
  }
}
