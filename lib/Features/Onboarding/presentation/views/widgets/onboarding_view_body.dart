import 'package:flutter/material.dart';
import 'package:quick_mart/Features/Onboarding/data/onboarding_list.dart';
import 'package:quick_mart/Features/Onboarding/presentation/views/widgets/custom_onboarding.dart';

class OnboardingViewBody extends StatefulWidget {
  const OnboardingViewBody({super.key});

  @override
  State<OnboardingViewBody> createState() => _OnboardingViewBodyState();
}

class _OnboardingViewBodyState extends State<OnboardingViewBody> {
  PageController pageController = PageController();
  int currentIndex = 0;
  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  void nextView() {
    if (currentIndex < onboardingList(context).length - 1) {
      pageController.nextPage(
        duration: const Duration(milliseconds: 600),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      onPageChanged: (index) {
        currentIndex = index;
      },
      itemCount: onboardingList(context).length,
      controller: pageController,
      itemBuilder: (BuildContext context, int index) {
        return CustomOnboarding(
          pageController: pageController,
          onboardingModel: onboardingList(context)[index],
          onTap: nextView,
          currentIndex: index,
        );
      },
    );
  }
}
