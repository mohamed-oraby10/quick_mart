import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/Features/Auth/presentation/views/widgets/digits_code.dart';
import 'package:quick_mart/core/utils/styles.dart';
import 'package:quick_mart/core/widgets/custom_app_bar.dart';

class EmailVerificationTextSection extends StatefulWidget {
  const EmailVerificationTextSection({super.key});

  @override
  State<EmailVerificationTextSection> createState() =>
      _EmailVerificationTextSectionState();
}

class _EmailVerificationTextSectionState
    extends State<EmailVerificationTextSection> {
  bool isCodeSent = true;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2), () {
      setState(() {
        isCodeSent = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AnimatedSwitcher(
          duration: Duration(milliseconds: 600),
          transitionBuilder: (child, animation) =>
              FadeTransition(opacity: animation, child: child),
          child: isCodeSent
              ? DigitsCode()
              : CustomAppBar(text: 'Verification Code'),
        ),
        SizedBox(height: 22.h),
        Text('Email Verification', style: Styles.heading2Bold),
        SizedBox(height: 8.h),
        Text(
          'Enter the 6-digit verification code send to your email address.',
          style: Styles.body2Regular,
        ),
      ],
    );
  }
}
