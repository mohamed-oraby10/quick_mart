import 'package:flutter/material.dart';
import 'package:quick_mart/Features/Auth/presentation/views/widgets/digits_code.dart';
import 'package:quick_mart/Features/Auth/presentation/views/widgets/email_verify_text_section.dart';
import 'package:quick_mart/core/widgets/custom_app_bar.dart';

class VerifyAppBarSection extends StatefulWidget {
  const VerifyAppBarSection({super.key});

  @override
  State<VerifyAppBarSection> createState() => _VerifyAppBarSectionState();
}

class _VerifyAppBarSectionState extends State<VerifyAppBarSection> {
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
        EmailVerificationTextSection(),
      ],
    );
  }
}
