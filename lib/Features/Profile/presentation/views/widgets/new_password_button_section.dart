import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:quick_mart/Features/Auth/presentation/manager/update_password_cubit/update_password_cubit.dart';
import 'package:quick_mart/Features/Profile/presentation/views/widgets/password_field_section.dart';
import 'package:quick_mart/core/extensions/app_localization_extension.dart';
import 'package:quick_mart/core/utils/app_routes.dart';
import 'package:quick_mart/core/utils/functions/show_error_snak_bar.dart';
import 'package:quick_mart/core/widgets/app_circular_progress_indicator.dart';
import 'package:quick_mart/core/widgets/main_button.dart';

class NewPasswordButtonSection extends StatelessWidget {
  const NewPasswordButtonSection({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController passwordController = TextEditingController();
    TextEditingController confirmedPasswordController = TextEditingController();

    GlobalKey<FormState> formKey = GlobalKey();
    return Form(
      key: formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          PasswordFieldSection(controller: passwordController),
          SizedBox(height: 16.h),
          PasswordFieldSection(
            text: context.locale.confirm_password,
            controller: confirmedPasswordController,
          ),
          SizedBox(height: 24.h),
          BlocConsumer<UpdatePasswordCubit, UpdatePasswordState>(
            listener: (context, state) {
              if (state is UpdatePasswordFailure) {
                showErroeSnakBar(context, content: state.errMessage);
              } else if (state is UpdatePasswordSuccess) {
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
                    BlocProvider.of<UpdatePasswordCubit>(
                      context,
                    ).updatePassword(
                      newPassword: passwordController.text.trim(),
                    );
                  }
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
