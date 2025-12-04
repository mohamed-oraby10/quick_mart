import 'package:flutter/material.dart';
import 'package:quick_mart/Features/Auth/presentation/views/widgets/email_verification_view_body.dart';

class EmailVerificationView extends StatelessWidget {
  const EmailVerificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: EmailVerificationViewBody(),
    );
  }
}