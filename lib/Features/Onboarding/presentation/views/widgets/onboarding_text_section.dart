import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/Features/Onboarding/data/models/onboarding_model.dart';
import 'package:quick_mart/Features/Onboarding/presentation/views/widgets/onboarding_card.dart';
import 'package:quick_mart/core/utils/styles.dart';
import 'package:quick_mart/core/utils/theme/extensions/theme_extension.dart';

class OnboardingTextSection extends StatelessWidget {
  const OnboardingTextSection({super.key, required this.onboardingModel, required this.currentIndex});
  final OnboardingModel onboardingModel;
  final int currentIndex;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        OnboardingCard(image: onboardingModel.image, currentIndex: currentIndex,),
        SizedBox(height: 24.h),
        Text(
          onboardingModel.title,
          style: Styles.heading2Bold,
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 16.h),
        Text(
          onboardingModel.desc,
          style: Styles.body2Regular.copyWith(
            color: context.customColors.secondaryColor,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
