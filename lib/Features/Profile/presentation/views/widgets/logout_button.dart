import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:quick_mart/Features/Auth/presentation/manager/logout_cubit/logout_cubit.dart';
import 'package:quick_mart/core/utils/app_colors.dart';
import 'package:quick_mart/core/utils/app_routes.dart';
import 'package:quick_mart/core/utils/functions/show_error_snak_bar.dart';
import 'package:quick_mart/core/widgets/app_circular_progress_indicator.dart';

class LogoutButton extends StatelessWidget {
  const LogoutButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LogoutCubit, LogoutState>(
      listener: (context, state) {
        if (state is LogoutSuccess) {
          GoRouter.of(context).go(AppRoutes.kLoginView);
        } else if (state is LogoutFailure) {
          showErrorSnakBar(context, content: state.errMessage);
        }
      },
      builder: (context, state) {
        if (state is LogoutLoading) {
          return const AppCircularProgressIndicator();
        } else {
          return IconButton(
            icon: Icon(
              Iconsax.logout_1_outline,
              size: 32.sp,
              color: AppColors.brandWhite,
            ),
            onPressed: () {
              context.read<LogoutCubit>().logout();
            },
          );
        }
      },
    );
  }
}
