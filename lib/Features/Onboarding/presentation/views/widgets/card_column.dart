import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/core/widgets/app_logo.dart';
import 'package:quick_mart/core/widgets/custom_text_button.dart';

class CardColumn extends StatelessWidget {
  const CardColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 20.h),
          child: Row(
            children: [
              AppLogo(),
              Spacer(),
              CustomTextButton(textButton: 'Skip for now'),
            ],
          ),
        ),
      ],
    );
  }
}
