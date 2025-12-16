import 'package:flutter/material.dart';
import 'package:quick_mart/Features/Auth/presentation/views/widgets/successful_sent_email_view_body.dart';

class SuccessfulSentEmailView extends StatelessWidget {
  const SuccessfulSentEmailView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SuccessfulSentEmailViewBody(),
    );
  }
}