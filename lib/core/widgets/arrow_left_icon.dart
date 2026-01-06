import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:quick_mart/core/extensions/app_localization_extension.dart';
import 'package:quick_mart/core/utils/theme/extensions/theme_extension.dart';

class ArrowLeftIcon extends StatelessWidget {
  const ArrowLeftIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      padding: EdgeInsets.zero,
      onPressed: () {
        GoRouter.of(context).pop();
      },
      icon: Icon(
        context.isArabic
            ? Iconsax.arrow_right_1_outline
            : Iconsax.arrow_left_outline,
        size: 32.sp,
        color: context.customColors.modeColor,
      ),
    );
  }
}
