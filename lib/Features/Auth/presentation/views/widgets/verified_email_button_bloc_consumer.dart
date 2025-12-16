import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:quick_mart/Features/Auth/presentation/manager/verify_email_cubit/verify_email_cubit.dart';
import 'package:quick_mart/core/utils/app_routes.dart';
import 'package:quick_mart/core/utils/functions/show_error_snak_bar.dart';
import 'package:quick_mart/core/widgets/app_circular_progress_indicator.dart';
import 'package:quick_mart/core/widgets/main_button.dart';

class VerifiedEmailButtonBlocConsumer extends StatelessWidget {
  const VerifiedEmailButtonBlocConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<VerifyEmailCubit, VerifyEmailState>(
      listener: (context, state) {
        if (state is EmailNotVerified) {
          showErroeSnakBar(context, content: 'Email not verified');
        } else if (state is EmailVerified) {
          GoRouter.of(context).go(AppRoutes.kLoginView);
        } else if (state is VerifyEmailFailure) {
          showErroeSnakBar(context, content: state.errMessage);
        }
      },
      builder: (context, state) {
        if (state is VerifyEmailLoading) {
          return const AppCircularProgressIndicator();
        }
        return MainButton(
          text: 'I verified my email',
          onTap: () => context.read<VerifyEmailCubit>().checkEmail(),
        );
      },
    );
  }
}
