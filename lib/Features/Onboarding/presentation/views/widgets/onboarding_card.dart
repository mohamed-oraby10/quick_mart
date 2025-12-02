import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/Features/Onboarding/presentation/views/widgets/card_column.dart';

class OnboardingCard extends StatelessWidget {
  const OnboardingCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 408.h,
          width: 328.w,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(32),
          ),
        ),
        CardColumn(),
      ],
    );
  }
}

