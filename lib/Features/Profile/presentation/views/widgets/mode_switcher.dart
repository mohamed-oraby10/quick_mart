import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:quick_mart/core/utils/app_colors.dart';
import 'package:quick_mart/core/utils/theme/extensions/theme_extension.dart';
import 'package:quick_mart/core/utils/theme/theme_cubit/theme_cubit.dart';

class ModeSwitcher extends StatefulWidget {
  const ModeSwitcher({super.key});

  @override
  State<ModeSwitcher> createState() => _ModeSwitcherState();
}

class _ModeSwitcherState extends State<ModeSwitcher> {
  @override
  Widget build(BuildContext context) {
    return FlutterSwitch(
      value: (context).isDarkMode,
      onToggle: (value) {
        (context).isDarkMode
            ? BlocProvider.of<ThemeCubit>(context).toggleTheme(ThemeMode.light)
            : BlocProvider.of<ThemeCubit>(context).toggleTheme(ThemeMode.dark);
        setState(() {});
      },
      width: 35.w,
      height: 24.h,
      activeColor: AppColors.brandCyan,
      inactiveColor: AppColors.greyLight150,
      toggleSize: 16.sp,
    );
  }
}
