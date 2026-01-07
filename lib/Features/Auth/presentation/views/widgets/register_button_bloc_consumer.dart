import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:quick_mart/Features/Auth/presentation/manager/signup_with_email_and_password_cubit/signup_with_email_and_password_cubit.dart';
import 'package:quick_mart/core/extensions/app_localization_extension.dart';
import 'package:quick_mart/core/utils/app_routes.dart';
import 'package:quick_mart/core/utils/functions/show_error_snak_bar.dart';
import 'package:quick_mart/core/widgets/app_circular_progress_indicator.dart';
import 'package:quick_mart/core/widgets/main_button.dart';

class RegisterButtonBlocConsumer extends StatelessWidget {
  const RegisterButtonBlocConsumer({
    super.key,
    required this.formKey,
    required this.emailController,
    required this.passwordController,
    required this.nameController,
  });

  final GlobalKey<FormState> formKey;
  final TextEditingController emailController,
      passwordController,
      nameController;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<
      SignupWithEmailAndPasswordCubit,
      SignupWithEmailAndPasswordState
    >(
      listener: (context, state) {
        if (state is SignupWithEmailAndPasswordSuccess) {
          GoRouter.of(context).push(AppRoutes.kHomeView);
        } else if (state is SignupWithEmailAndPasswordFailure) {
          showErrorSnakBar(context, content: state.errMessage);
        }
      },
      builder: (context, state) {
        if (state is SignupWithEmailAndPasswordLoading) {
          return const AppCircularProgressIndicator();
        } else {
          return MainButton(
            text: context.locale.create_account,
            onTap: () {
              if (formKey.currentState!.validate()) {
                BlocProvider.of<SignupWithEmailAndPasswordCubit>(
                  context,
                ).signupWithEmailAndPassword(
                  email: emailController.text.trim(),
                  password: passwordController.text.trim(),
                  name: nameController.text.trim(),
                );
              }
            },
          );
        }
      },
    );
  }
}
