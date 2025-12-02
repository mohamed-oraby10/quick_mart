import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/Features/Onboarding/presentation/views/widgets/onboarding_card.dart';

class CustomOnboarding extends StatelessWidget {
  const CustomOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        children: [
          SizedBox(height: 30.h),
          const OnboardingCard()
        ],
      ),
    );
  }
}
