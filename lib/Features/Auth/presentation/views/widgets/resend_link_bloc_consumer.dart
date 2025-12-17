import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quick_mart/Features/Auth/presentation/manager/verify_email_cubit/verify_email_cubit.dart';
import 'package:quick_mart/core/utils/functions/show_error_snak_bar.dart';
import 'package:quick_mart/core/utils/functions/show_success_snack_bar.dart';
import 'package:quick_mart/core/widgets/app_circular_progress_indicator.dart';
import 'package:quick_mart/core/widgets/custom_text_button.dart';

class ResendLinkBlocConsumer extends StatelessWidget {
  const ResendLinkBlocConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<VerifyEmailCubit, VerifyEmailState>(
      listenWhen: (previous, current) =>
          current is VerifyEmailFailure || current is VerifyEmailSuccess,
      listener: (context, state) {
        if (state is VerifyEmailFailure) {
          showErroeSnakBar(context, content: state.errMessage);
        } else if (state is VerifyEmailSuccess) {
          showSuccessSnakBar(
            context,
            content: 'We’ve sent a verification link to your email',
          );
        }
      },
      buildWhen: (previous, current) =>
          current is VerifyEmailLoading || current is VerifyEmailInitial,
      builder: (context, state) {
        if (state is VerifyEmailLoading) {
          return AppCircularProgressIndicator();
        }
        return CustomTextButton(
          textButton: 'Resend link',
          onTap: () {
            BlocProvider.of<VerifyEmailCubit>(context).sendEmail();
          },
        );
      },
    );
  }
}
