import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quick_mart/Features/Auth/data/repos/auth_repo_impl.dart';
import 'package:quick_mart/Features/Auth/domain/use_cases/check_email_verified_user_case.dart';
import 'package:quick_mart/Features/Auth/domain/use_cases/email_verification_use_case.dart';
import 'package:quick_mart/Features/Auth/presentation/manager/verify_email_cubit/verify_email_cubit.dart';
import 'package:quick_mart/Features/Auth/presentation/views/widgets/successful_sent_email_view_body.dart';
import 'package:quick_mart/core/utils/functions/setup_service_locator.dart';

class SuccessfulSentEmailView extends StatelessWidget {
  const SuccessfulSentEmailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (_) => VerifyEmailCubit(
          EmailVerificationUseCase(getIt<AuthRepoImpl>()),
          CheckEmailVerifiedUseCase(getIt<AuthRepoImpl>()),
        )..sendEmail(),
        child: const SuccessfulSentEmailViewBody(),
      ),
    );
  }
}
