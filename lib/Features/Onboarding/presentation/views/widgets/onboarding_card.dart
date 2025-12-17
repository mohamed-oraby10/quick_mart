import 'package:flutter/material.dart';
import 'package:quick_mart/Features/Onboarding/presentation/views/widgets/card_column.dart';
import 'package:quick_mart/core/widgets/custom_container.dart';

class OnboardingCard extends StatelessWidget {
  const OnboardingCard({
    super.key,
    required this.image,
    required this.currentIndex,
  });
  final String image;
  final int currentIndex;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomContainer(),
        CardColumn(image: image, currentIndex: currentIndex),
      ],
    );
  }
}
