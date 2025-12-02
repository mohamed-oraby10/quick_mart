import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quick_mart/core/utils/assets_data.dart';
import 'package:quick_mart/core/utils/styles.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 48.w),
        child: SizedBox(
          height: 76.h,
          width: 263.w,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                AssetsData.splashLogo,
                height: 76.h,
                width: 71.w,
              ),
              SizedBox(width: 4.w),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SvgPicture.asset(
                    AssetsData.logoText,
                    height: 33.h,
                    width: 187.w,
                  ),
                  SizedBox(height: 5.h),
                  Text('Asia’s No 1 Ecommerce App', style: Styles.button2),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
