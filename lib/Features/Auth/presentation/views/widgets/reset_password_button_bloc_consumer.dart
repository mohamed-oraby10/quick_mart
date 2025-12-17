import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:quick_mart/Features/Auth/presentation/manager/reset_password_cubit/reset_password_cubit.dart';
import 'package:quick_mart/core/utils/app_routes.dart';
import 'package:quick_mart/core/utils/functions/show_error_snak_bar.dart';
import 'package:quick_mart/core/widgets/app_circular_progress_indicator.dart';
import 'package:quick_mart/core/widgets/main_button.dart';

class ResetPasswordButttonBlocConsumer extends StatelessWidget {
  const ResetPasswordButttonBlocConsumer({
    super.key,
    required this.emailController,
    required this.formKey,
  });
  final TextEditingController emailController;
  final GlobalKey<FormState> formKey;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ResetPasswordCubit, ResetPasswordState>(
      listener: (context, state) {
        if (state is ResetPasswordFailure) {
          showErroeSnakBar(context, content: state.errMessage);
        } else if (state is ResetPasswordSuccess) {
          GoRouter.of(context).push(AppRoutes.kResetPasswordView);
        }
      },
      builder: (context, state) {
        if (state is ResetPasswordLaoding) {
          return AppCircularProgressIndicator();
        } else {
          return MainButton(
            onTap: () {
              if (formKey.currentState!.validate()) {
                BlocProvider.of<ResetPasswordCubit>(
                  context,
                ).resetPassword(email: emailController.text.trim());
              }
            },
            text: 'Send',
          );
        }
      },
    );
  }
}
