import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quick_mart/Features/Auth/data/repos/auth_repo_impl.dart';
import 'package:quick_mart/Features/Auth/presentation/manager/verify_old_password_cubit/verify_old_password_cubit.dart';
import 'package:quick_mart/Features/Profile/presentation/views/widgets/change_password_view_body.dart';
import 'package:quick_mart/core/utils/functions/setup_service_locator.dart';

class ChangePasswordView extends StatelessWidget {
  const ChangePasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => VerifyOldPasswordCubit(getIt.get<AuthRepoImpl>()),
      child: const Scaffold(body: SafeArea(child: ChangePasswordViewBody())),
    );
  }
}
