import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:quick_mart/core/utils/app_routes.dart';

class ExclusiveSalesContainer extends StatelessWidget {
  const ExclusiveSalesContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 24.h),
      child: GestureDetector(
        onTap: () => GoRouter.of(context).push(AppRoutes.kExclusiveSalesView),
        child: Container(
          width: double.infinity,
          height: 148.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            color: Colors.grey,
          ),
          child: Image.asset('assets/images/Banner.png', fit: BoxFit.fill),
        ),
      ),
    );
  }
}
