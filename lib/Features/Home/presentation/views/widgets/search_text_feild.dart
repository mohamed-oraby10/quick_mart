import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:quick_mart/core/extensions/app_localization_extension.dart';
import 'package:quick_mart/core/utils/styles.dart';
import 'package:quick_mart/core/utils/theme/extensions/theme_extension.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({super.key, this.onChanged, this.onTap});
  final void Function(String)? onChanged;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
      decoration: InputDecoration(
        hintText: context.locale.search,
        hintStyle: Styles.captionRegular.copyWith(
          color: context.customColors.secondaryColor,
        ),
        prefixIcon: Icon(Iconsax.search_normal_1_outline, size: 24.sp),

        suffixIcon: IconButton(
          onPressed: onTap,
          icon: Icon(Iconsax.setting_4_outline, size: 24.sp),
        ),
        border: OutlineInputBorder(),
      ),
    );
  }
}
