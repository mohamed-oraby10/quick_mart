import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:quick_mart/Features/Profile/presentation/manager/fetch_user_data_cubit/fetch_user_data_cubit.dart';
import 'package:quick_mart/core/utils/app_colors.dart';
import 'package:quick_mart/core/utils/app_routes.dart';
import 'package:quick_mart/core/widgets/app_circular_progress_indicator.dart';

class ProfileImage extends StatelessWidget {
  const ProfileImage({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchUserDataCubit, FetchUserDataState>(
      builder: (context, state) {
        if (state is FetchUserDataSuccess) {
          return GestureDetector(
            onTap: () => GoRouter.of(context).push(AppRoutes.kProfileView),
            child: Container(
              height: 40.h,
              width: 40.w,
              decoration: BoxDecoration(
                color: AppColors.grey100,
                borderRadius: BorderRadius.circular(8.r),
              ),
              child: Image.network(state.user.image ?? ''),
            ),
          );
        } else if (state is FetchUserDataLoading) {
          return AppCircularProgressIndicator();
        } else {
          return Text('?');
        }
      },
    );
  }
}
