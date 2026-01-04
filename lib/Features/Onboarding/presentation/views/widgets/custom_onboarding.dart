import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/Features/Onboarding/data/models/onboarding_model.dart';
import 'package:quick_mart/Features/Onboarding/data/onboarding_list.dart';
import 'package:quick_mart/Features/Onboarding/presentation/views/widgets/login_button_row.dart';
import 'package:quick_mart/Features/Onboarding/presentation/views/widgets/onboarding_text_section.dart';
import 'package:quick_mart/core/extensions/app_localization_extension.dart';
import 'package:quick_mart/core/widgets/app_smooth_indicator.dart';

class CustomOnboarding extends StatelessWidget {
  const CustomOnboarding({
    super.key,
    required this.pageController,
    required this.onboardingModel,
    this.onTap,
    required this.currentIndex,
  });
  final PageController pageController;
  final OnboardingModel onboardingModel;
  final void Function()? onTap;
  final int currentIndex;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 44.h),
          OnboardingTextSection(
            onboardingModel: onboardingModel,
            currentIndex: currentIndex,
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 24.h),
            child: currentIndex == 2
                ? LoginButtonRow()
                : ElevatedButton(onPressed: onTap, child: Text(context.locale.next)),
          ),
          AppPageIndicator(
            pageController: pageController,
            length: onboardingList.length,
          ),
        ],
      ),
    );
  }
}
