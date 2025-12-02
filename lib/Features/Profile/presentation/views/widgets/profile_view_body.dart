import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:quick_mart/core/utils/app_colors.dart';
import 'package:quick_mart/core/utils/styles.dart';
import 'package:quick_mart/core/utils/theme/extensions/theme_extension.dart';
import 'package:quick_mart/core/utils/theme/theme_cubit/theme_cubit.dart';

class ProfileViewBody extends StatefulWidget {
  const ProfileViewBody({super.key});

  @override
  State<ProfileViewBody> createState() => _ProfileViewBodyState();
}

class _ProfileViewBodyState extends State<ProfileViewBody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        children: [
          SizedBox(height: 50.h),
          Row(
            children: [
              Icon(
                Iconsax.mobile_outline,
                size: 24.sp,
                color: AppColors.greyLight150,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.w),
                child: Text(
                  'Dark Theme',
                  style: Styles.body2Medium.copyWith(
                    color: AppColors.greyLight150,
                  ),
                ),
              ),
              Spacer(),
              FlutterSwitch(
                value: (context).isDarkMode,
                onToggle: (value) {
                  (context).isDarkMode
                      ? BlocProvider.of<ThemeCubit>(
                          context,
                        ).toggleTheme(ThemeMode.light)
                      : BlocProvider.of<ThemeCubit>(
                          context,
                        ).toggleTheme(ThemeMode.dark);
                  setState(() {});
                },
                width: 35.w,
                height: 24.h,
                activeColor: AppColors.brandCyan,
                inactiveColor: AppColors.greyLight150,
                toggleSize: 16.sp,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
