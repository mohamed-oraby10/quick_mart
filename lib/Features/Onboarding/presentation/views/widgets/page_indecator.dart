import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/Features/Onboarding/data/onboarding_list.dart';
import 'package:quick_mart/core/utils/app_colors.dart';
import 'package:quick_mart/core/utils/theme/extensions/theme_extension.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PageIndicator extends StatelessWidget {
  const PageIndicator({super.key, required this.pageController});
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 32.w,
      height: 16.h,
      decoration: BoxDecoration(
        color: context.customColors.cardColor,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Center(
        child: SmoothPageIndicator(
          controller: pageController,
          count: onboardingList.length,
          effect: SlideEffect(
            dotHeight: 6.h,
            dotWidth: 6.w,
            spacing: 4,
            activeDotColor: AppColors.brandCyan,
            dotColor: AppColors.grey100,
          ),
        ),
      ),
    );
  }
}
