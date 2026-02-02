import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:quick_mart/Features/Profile/presentation/views/widgets/profile_image.dart';
import 'package:quick_mart/core/utils/app_routes.dart';
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
        CustomIconButton(
          icon: Iconsax.search_normal_1_outline,
          onTap: () => GoRouter.of(context).push(AppRoutes.kProductsSearchView),
        ),
        SizedBox(width: 12.w),
        ProfileImage(
          onTap: () => GoRouter.of(context).push(AppRoutes.kProfileView),
        ),
      ],
    );
  }
}
