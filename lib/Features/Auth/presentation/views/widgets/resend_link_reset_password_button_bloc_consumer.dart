import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quick_mart/Features/Auth/presentation/manager/reset_password_cubit/reset_password_cubit.dart';
import 'package:quick_mart/core/utils/functions/show_error_snak_bar.dart';
import 'package:quick_mart/core/utils/functions/show_success_snack_bar.dart';
import 'package:quick_mart/core/widgets/app_circular_progress_indicator.dart';
import 'package:quick_mart/core/widgets/custom_text_button.dart';

class ResendLinkResetPasswordButtonBlocConsumer extends StatelessWidget {
  const ResendLinkResetPasswordButtonBlocConsumer({
    super.key,
    required this.emailController,
  });

  final TextEditingController emailController;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ResetPasswordCubit, ResetPasswordState>(
      listener: (context, state) {
        if (state is ResetPasswordFailure) {
          showErroeSnakBar(context, content: state.errMessage);
        } else if (state is ResetPasswordSuccess) {
          showSuccessSnakBar(
            context,
            content: 'link sent again for ${emailController.text}',
          );
        }
      },
      builder: (context, state) {
        if (state is ResetPasswordLaoding) {
          return AppCircularProgressIndicator();
        } else {
          return CustomTextButton(
            onTap: () {
              BlocProvider.of<ResetPasswordCubit>(
                context,
              ).resetPassword(email: emailController.text.trim());
            },
            textButton: 'Resend link',
          );
        }
      },
    );
  }
}
