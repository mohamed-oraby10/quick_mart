import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:quick_mart/core/utils/app_colors.dart';
import 'package:quick_mart/core/utils/theme/extensions/theme_extension.dart';
import 'package:quick_mart/core/utils/theme/theme_cubit/theme_cubit.dart';

class ModeSwitcher extends StatelessWidget {
  const ModeSwitcher({super.key});

  @override
  Widget build(BuildContext context) {
    return FlutterSwitch(
      value: context.isDarkMode,
      onToggle: (value) {
        BlocProvider.of<ThemeCubit>(
          context,
        ).toggleTheme(context.isDarkMode ? ThemeMode.light : ThemeMode.dark);
      },
      width: 35.w,
      height: 24.h,
      activeColor: AppColors.brandCyan,
      inactiveColor: AppColors.greyLight150,
      toggleSize: 16.sp,
    );
  }
}
