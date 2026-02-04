import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/Features/Profile/presentation/manager/fetch_user_data_cubit/fetch_user_data_cubit.dart';
import 'package:quick_mart/Features/Profile/presentation/views/widgets/logout_button.dart';
import 'package:quick_mart/Features/Profile/presentation/views/widgets/profile_image.dart';
import 'package:quick_mart/core/utils/app_colors.dart';
import 'package:quick_mart/core/utils/styles.dart';
import 'package:quick_mart/core/widgets/app_circular_progress_indicator.dart';

class ProfileDetails extends StatelessWidget {
  const ProfileDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchUserDataCubit, FetchUserDataState>(
      builder: (context, state) {
        if (state is FetchUserDataSuccess) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ProfileImage(),
                SizedBox(width: 8.w),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        state.user.fullName,
                        style: Styles.button1.copyWith(
                          color: AppColors.brandWhite,
                        ),
                      ),
                      Text(
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        state.user.userEmail,
                        style: Styles.button2.copyWith(
                          color: AppColors.brandWhite,
                        ),
                      ),
                    ],
                  ),
                ),
                LogoutButton(),
              ],
            ),
          );
        } else {
          return AppCircularProgressIndicator();
        }
      },
    );
  }
}
