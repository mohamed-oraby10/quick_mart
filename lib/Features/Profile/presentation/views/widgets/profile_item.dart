import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:quick_mart/Features/Profile/presentation/views/widgets/mode_switcher.dart';
import 'package:quick_mart/core/extensions/app_localization_extension.dart';
import 'package:quick_mart/core/utils/styles.dart';
import 'package:quick_mart/core/utils/theme/extensions/theme_extension.dart';

class ProfileItem extends StatelessWidget {
  const ProfileItem({
    super.key,
    required this.icon,
    required this.title,
    this.onTap,
    this.isModeIcon = false,
  });
  final IconData icon;
  final String title;
  final void Function()? onTap;
  final bool isModeIcon;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Icon(icon, size: 24.sp, color: context.customColors.secondaryColor),
            SizedBox(width: 12.w),
            Text(
              title,
              style: Styles.body2Medium.copyWith(
                color: context.customColors.secondaryColor,
              ),
            ),
            Spacer(),
            isModeIcon
                ? ModeSwitcher()
                : IconButton(
                    onPressed: onTap,
                    icon: Icon(
                      context.isArabic
                          ? Iconsax.arrow_left_2_outline
                          : Iconsax.arrow_right_3_outline,
                      size: 24.sp,
                      color: context.customColors.secondaryColor,
                    ),
                  ),
          ],
        ),
        Divider(thickness: 1, color: context.customColors.buttonColor),
      ],
    );
  }
}
