import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:quick_mart/Features/Auth/presentation/manager/login_with_google_cubit/login_with_google_cubit.dart';
import 'package:quick_mart/Features/Auth/presentation/views/widgets/auth_text_section.dart';
import 'package:quick_mart/Features/Auth/presentation/views/widgets/google_button.dart';
import 'package:quick_mart/Features/Auth/presentation/views/widgets/login_section.dart';
import 'package:quick_mart/core/extensions/app_localization_extension.dart';
import 'package:quick_mart/core/utils/app_routes.dart';
import 'package:quick_mart/core/widgets/app_circular_progress_indicator.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formKey = GlobalKey();
    return BlocBuilder<LoginWithGoogleCubit, LoginWithGoogleState>(
      builder: (context, state) {
        return ModalProgressHUD(
          progressIndicator: const AppCircularProgressIndicator(),
          inAsyncCall: state is LoginWithGoogleLoading,
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AuthTextSection(
                      title: context.locale.login,
                      desc: context.locale.dont_have_account,
                      loginText: context.locale.signup,
                      onTap: () =>
                          GoRouter.of(context).go(AppRoutes.kRegisterView),
                    ),
                    LoginSection(formKey: formKey),
                    SizedBox(height: 16.h),
                    GoogleButton(text: context.locale.login_with_google),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
