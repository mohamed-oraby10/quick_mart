import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/Features/Onboarding/presentation/views/widgets/onboarding_card.dart';
import 'package:quick_mart/Features/Onboarding/presentation/views/widgets/page_indecator.dart';
import 'package:quick_mart/core/utils/styles.dart';
import 'package:quick_mart/core/utils/theme/extensions/theme_extension.dart';

class CustomOnboarding extends StatelessWidget {
  const CustomOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 44.h),
          const OnboardingCard(),
          SizedBox(height: 24.h),
          Text(
            'Explore a wide range of products',
            style: Styles.heading2Bold,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 16.h),
          Text(
            'Explore a wide range of products at your fingertips. QuickMart offers an extensive collection to suit your needs.',
            style: Styles.body2Regular.copyWith(
              color: context.customColors.secondaryColor,
            ),
            textAlign: TextAlign.center,
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 24.h),
            child: ElevatedButton(onPressed: () {}, child: Text('Next')),
          ),
          PageIndicator(pageController: PageController()),
        ],
      ),
    );
  }
}
