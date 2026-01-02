import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:quick_mart/Features/Profile/presentation/views/widgets/profile_image.dart';
import 'package:quick_mart/core/widgets/app_logo.dart';
import 'package:quick_mart/core/widgets/custom_icon_button.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        AppLogo(),
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.w),
            child: TextField(),
          ),
        ),
        // Row(
        //   children: [
        //     CustomIconButton(icon: Iconsax.search_normal_1_outline),
        //     SizedBox(width: 12.w),
        //     ProfileImage(),
        //   ],
        // ),
      ],
    );
  }
}
