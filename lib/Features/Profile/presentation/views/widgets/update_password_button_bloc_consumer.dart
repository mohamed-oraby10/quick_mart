import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:quick_mart/Features/Auth/presentation/manager/update_password_cubit/update_password_cubit.dart';
import 'package:quick_mart/core/extensions/app_localization_extension.dart';
import 'package:quick_mart/core/utils/app_routes.dart';
import 'package:quick_mart/core/utils/functions/show_error_snak_bar.dart';
import 'package:quick_mart/core/utils/functions/show_success_snack_bar.dart';
import 'package:quick_mart/core/widgets/app_circular_progress_indicator.dart';
import 'package:quick_mart/core/widgets/main_button.dart';

class UpdatePasswordButtonBlocConsumer extends StatelessWidget {
  const UpdatePasswordButtonBlocConsumer({
    super.key,
    required this.formKey,
    required this.passwordController,
    required this.confirmedPasswordController,
  });

  final GlobalKey<FormState> formKey;
  final TextEditingController passwordController;
  final TextEditingController confirmedPasswordController;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UpdatePasswordCubit, UpdatePasswordState>(
      listener: (context, state) {
        if (state is UpdatePasswordFailure) {
          showErrorSnakBar(context, content: state.errMessage);
        } else if (state is UpdatePasswordSuccess) {
          showSuccessSnakBar(
            context,
            content: context.locale.password_changed_successfully,
          );
          GoRouter.of(context).go(AppRoutes.kProfileView);
        }
      },
      builder: (context, state) {
        if (state is UpdatePasswordLoading) {
          return AppCircularProgressIndicator();
        }
        return MainButton(
          text: context.locale.save,
          onTap: () {
            if (formKey.currentState!.validate()) {
              BlocProvider.of<UpdatePasswordCubit>(context).updatePassword(
                newPassword: passwordController.text.trim(),
                confirmedPassword: confirmedPasswordController.text.trim(),
              );
            }
          },
        );
      },
    );
  }
}
