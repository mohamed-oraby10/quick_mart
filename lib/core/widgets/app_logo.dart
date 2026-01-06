import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quick_mart/core/utils/assets_data.dart';
import 'package:quick_mart/core/utils/theme/extensions/theme_extension.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Row(
        children: [
          SvgPicture.asset(AssetsData.logoIcon, width: 30.w, height: 32.h),
          SizedBox(width: 1.w),
          SvgPicture.asset(
            AssetsData.logoText,
            height: 12.h,
            width: 72.w,
            color: context.customColors.modeColor,
          ),
        ],
      ),
    );
  }
}
