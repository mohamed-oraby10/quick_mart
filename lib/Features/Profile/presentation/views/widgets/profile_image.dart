import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:quick_mart/Features/Profile/presentation/manager/fetch_user_data_cubit/fetch_user_data_cubit.dart';
import 'package:quick_mart/core/utils/app_colors.dart';
import 'package:quick_mart/core/widgets/app_circular_progress_indicator.dart';

class ProfileImage extends StatelessWidget {
  const ProfileImage({super.key, this.onTap});
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchUserDataCubit, FetchUserDataState>(
      builder: (context, state) {
        if (state is FetchUserDataSuccess) {
          return GestureDetector(
            onTap: onTap,
            child: Container(
              height: 40.h,
              width: 40.w,
              decoration: BoxDecoration(
                color: AppColors.grey100,
                borderRadius: BorderRadius.circular(8.r),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.r),
                child: state.user.image!.isNotEmpty
                    ? CachedNetworkImage(
                        imageUrl: state.user.image ?? '',
                        fit: BoxFit.cover,
                      )
                    : Icon(Iconsax.profile_tick_outline, size: 28.sp),
              ),
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
