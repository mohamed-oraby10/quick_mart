import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quick_mart/Features/Auth/data/repos/auth_repo_impl.dart';
import 'package:quick_mart/Features/Auth/domain/use_cases/login_with_email_and_password_use_case.dart';
import 'package:quick_mart/Features/Auth/domain/use_cases/login_with_google_use_case.dart';
import 'package:quick_mart/Features/Auth/presentation/manager/login_with_email_and_password_cubit/login_with_email_and_password_cubit.dart';
import 'package:quick_mart/Features/Auth/presentation/manager/login_with_google_cubit/login_with_google_cubit.dart';
import 'package:quick_mart/Features/Auth/presentation/views/widgets/login_view_body.dart';
import 'package:quick_mart/core/utils/functions/setup_service_locator.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => LoginWithEmailAndPasswordCubit(
            LoginWithEmailAndPasswordUseCase(getIt.get<AuthRepoImpl>()),
          ),
        ),
        BlocProvider(
          create: (context) => LoginWithGoogleCubit(
            LoginWithGoogleUseCase(getIt.get<AuthRepoImpl>()),
          ),
        ),
      ],
      child: const Scaffold(body: LoginViewBody()),
    );
  }
}
