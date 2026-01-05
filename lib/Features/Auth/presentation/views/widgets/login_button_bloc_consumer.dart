import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:quick_mart/Features/Auth/presentation/manager/login_with_email_and_password_cubit/login_with_email_and_password_cubit.dart';
import 'package:quick_mart/core/extensions/app_localization_extension.dart';
import 'package:quick_mart/core/utils/app_routes.dart';
import 'package:quick_mart/core/utils/functions/show_error_snak_bar.dart';
import 'package:quick_mart/core/widgets/app_circular_progress_indicator.dart';
import 'package:quick_mart/core/widgets/main_button.dart';

class LoginButtonBlocConsumer extends StatelessWidget {
  const LoginButtonBlocConsumer({
    super.key,
    required this.emailController,
    required this.passwordController,
    required this.formKey,
  });
  final GlobalKey<FormState> formKey;
  final TextEditingController emailController;
  final TextEditingController passwordController;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<
      LoginWithEmailAndPasswordCubit,
      LoginWithEmailAndPasswordState
    >(
      listener: (context, state) {
        if (state is LoginWithEmailAndPasswordSuccess) {
          GoRouter.of(context).go(AppRoutes.kHomeView);
        } else if (state is LoginWithEmailAndPasswordFailure) {
          showErroeSnakBar(context, content: state.errMessage);
        }
      },
      builder: (context, state) {
        if (state is LoginWithEmailAndPasswordLoading) {
          return const AppCircularProgressIndicator();
        } else {
          return MainButton(
            text: context.locale.login,
            onTap: () {
              if (formKey.currentState!.validate()) {
                BlocProvider.of<LoginWithEmailAndPasswordCubit>(
                  context,
                ).loginWithEmailAndPassword(
                  email: emailController.text.trim(),
                  password: passwordController.text.trim(),
                );
              }
            },
          );
        }
      },
    );
  }
}
