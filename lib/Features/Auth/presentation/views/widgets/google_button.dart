import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:quick_mart/Features/Auth/presentation/manager/login_with_google_cubit/login_with_google_cubit.dart';
import 'package:quick_mart/core/utils/app_colors.dart';
import 'package:quick_mart/core/utils/app_routes.dart';
import 'package:quick_mart/core/utils/functions/show_error_snak_bar.dart';
import 'package:quick_mart/core/utils/theme/extensions/theme_extension.dart';
import 'package:quick_mart/core/widgets/app_circular_progress_indicator.dart';

class GoogleButton extends StatelessWidget {
  const GoogleButton({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginWithGoogleCubit, LoginWithGoogleState>(
      listener: (context, state) {
        if (state is LoginWithGoogleSuccess) {
          GoRouter.of(context).go(AppRoutes.kHomeView);
        } else if (state is LoginWithGoogleFailure) {
          showErroeSnakBar(context, content: state.errMessage);
        }
      },
      builder: (context, state) {
        if (state is LoginWithGoogleLoading) {
          return AppCircularProgressIndicator();
        } else {
          return ElevatedButton(
            style: ElevatedButton.styleFrom(
              elevation: 0,
              side: BorderSide(color: context.customColors.buttonColor),
              backgroundColor: context.isDarkMode
                  ? AppColors.brandBlack
                  : AppColors.brandWhite,
              foregroundColor: context.customColors.modeColor,
            ),
            onPressed: () {
              BlocProvider.of<LoginWithGoogleCubit>(context).loginWithGoogle();
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(text),
                SizedBox(width: 8.w),
                Icon(
                  Iconsax.google_1_bold,
                  size: 24.sp,
                  color: AppColors.brandCyan,
                ),
              ],
            ),
          );
        }
      },
    );
  }
}
