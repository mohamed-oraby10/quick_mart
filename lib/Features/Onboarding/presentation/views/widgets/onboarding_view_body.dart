import 'package:flutter/material.dart';
import 'package:quick_mart/Features/Onboarding/presentation/views/widgets/custom_onboarding.dart';

class OnboardingViewBody extends StatelessWidget {
  const OnboardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemBuilder: (BuildContext context, int index) {
        return CustomOnboarding();
      },
    );
  }
}
