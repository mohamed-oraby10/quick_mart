import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quick_mart/Features/Auth/data/repos/auth_repo_impl.dart';
import 'package:quick_mart/Features/Auth/domain/use_cases/reset_password_use_case.dart';
import 'package:quick_mart/Features/Auth/presentation/manager/reset_password_cubit/reset_password_cubit.dart';
import 'package:quick_mart/Features/Auth/presentation/views/widgets/reset_password_view_body.dart';
import 'package:quick_mart/core/utils/functions/setup_service_locator.dart';

class ResetPasswordView extends StatelessWidget {
  const ResetPasswordView({super.key, required this.emailController});
  final TextEditingController emailController;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          ResetPasswordCubit(ResetPasswordUseCase(getIt.get<AuthRepoImpl>())),
      child: Scaffold(
        body: ResetPasswordViewBody(emailController: emailController),
      ),
    );
  }
}
