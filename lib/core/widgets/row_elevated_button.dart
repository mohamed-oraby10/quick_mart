import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:quick_mart/core/utils/app_routes.dart';

class RowElevatedButton extends StatelessWidget {
  const RowElevatedButton({super.key, required this.text, required this.icon});
  final String text;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 160.w,
      child: ElevatedButton(
        onPressed: () {
          GoRouter.of(context).go(AppRoutes.kHomeView);
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(text),
            SizedBox(width: 8.w),
            Icon(icon, size: 24.sp),
          ],
        ),
      ),
    );
  }
}
