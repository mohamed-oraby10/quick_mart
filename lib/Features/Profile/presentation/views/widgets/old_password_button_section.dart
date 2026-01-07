import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:quick_mart/Features/Auth/presentation/manager/verify_old_password_cubit/verify_old_password_cubit.dart';
import 'package:quick_mart/Features/Profile/presentation/views/widgets/password_field_section.dart';
import 'package:quick_mart/core/extensions/app_localization_extension.dart';
import 'package:quick_mart/core/utils/app_routes.dart';
import 'package:quick_mart/core/utils/functions/show_error_snak_bar.dart';
import 'package:quick_mart/core/widgets/app_circular_progress_indicator.dart';
import 'package:quick_mart/core/widgets/main_button.dart';

class OldPasswordButtonSection extends StatelessWidget {
  const OldPasswordButtonSection({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    GlobalKey<FormState> formKey = GlobalKey();
    return Form(
      key: formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          PasswordFieldSection(controller: controller),
          SizedBox(height: 24.h),
          BlocConsumer<VerifyOldPasswordCubit, VerifyOldPasswordState>(
            listener: (context, state) {
              if (state is VerifyOldPasswordFailure) {
                showErroeSnakBar(context, content: state.errMessage);
              } else if (state is VerifyOldPasswordSuccess) {
                GoRouter.of(context).push(AppRoutes.kNewPasswordViewBody);
              }
            },
            builder: (context, state) {
              if (state is VerifyOldPasswordLoading) {
                return AppCircularProgressIndicator();
              }
              return MainButton(
                text: context.locale.follow_up,
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    BlocProvider.of<VerifyOldPasswordCubit>(
                      context,
                    ).verifyOldPassword(oldPassword: controller.text.trim());
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
