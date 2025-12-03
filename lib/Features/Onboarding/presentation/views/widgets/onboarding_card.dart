import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/Features/Onboarding/presentation/views/widgets/card_column.dart';
import 'package:quick_mart/core/utils/theme/extensions/theme_extension.dart';

class OnboardingCard extends StatelessWidget {
  const OnboardingCard({super.key, required this.image, required this.currentIndex});
  final String image;
  final int currentIndex;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 408.h,
          width: 328.w,
          decoration: BoxDecoration(
            color: context.customColors.cardColor,
            borderRadius: BorderRadius.circular(32),
          ),
        ),
        CardColumn(image: image, currentIndex: currentIndex),
      ],
    );
  }
}
