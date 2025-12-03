import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:quick_mart/core/utils/app_routes.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 160.w,
      child: ElevatedButton(
        onPressed: () {
          GoRouter.of(context).go(AppRoutes.kRegisterView);
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Get started'),
            SizedBox(width: 8.w),
            Icon(Iconsax.arrow_right_1_outline, size: 24.sp),
          ],
        ),
      ),
    );
  }
}
