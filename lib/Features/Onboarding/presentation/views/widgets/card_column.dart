import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/core/utils/assets_data.dart';
import 'package:quick_mart/core/widgets/app_logo.dart';
import 'package:quick_mart/core/widgets/custom_image.dart';
import 'package:quick_mart/core/widgets/custom_text_button.dart';

class CardColumn extends StatelessWidget {
  const CardColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 18.w),
      child: Column(
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
          SizedBox(height: 46.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 26.w),
            child: CustomImage(image: AssetsData.onBoarding1),
          ),
          SizedBox(height: 70.h),
        ],
      ),
    );
  }
}
