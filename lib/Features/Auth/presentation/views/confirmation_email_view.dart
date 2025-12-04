import 'package:flutter/material.dart';
import 'package:quick_mart/Features/Auth/presentation/views/widgets/confirmation_email_view_body.dart';

class ConfirmationEmailView extends StatelessWidget {
  const ConfirmationEmailView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ConfirmationEmailViewBody(),
    );
  }
}