import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:quick_mart/core/utils/assets_data.dart';
import 'package:quick_mart/core/widgets/app_logo.dart';
import 'package:quick_mart/core/widgets/custom_icon_button.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        AppLogo(),
        Spacer(),
        CustomIconButton(icon: Iconsax.search_normal_1_outline),
        SizedBox(width: 12.w),
        Container(
          height: 32.h,
          width: 32.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.blueAccent,
          ),
          child: SvgPicture.asset(AssetsData.logo),
        ),
      ],
    );
  }
}
