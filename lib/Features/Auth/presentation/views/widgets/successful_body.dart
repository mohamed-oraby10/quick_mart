import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/core/utils/assets_data.dart';
import 'package:quick_mart/core/utils/styles.dart';
import 'package:quick_mart/core/utils/theme/extensions/theme_extension.dart';
import 'package:quick_mart/core/widgets/custom_container.dart';

class SuccessfulBody extends StatelessWidget {
  const SuccessfulBody({super.key, required this.title, required this.desc});
  final String title, desc;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Stack(
          alignment: AlignmentDirectional.center,
          children: [
            CustomContainer(),
            Center(child: Image.asset(AssetsData.newPassword)),
          ],
        ),
        SizedBox(height: 24.h),
        Text(title, style: Styles.heading2Bold, textAlign: TextAlign.center),
        SizedBox(height: 16.h),
        Text(
          desc,
          style: Styles.body2Regular.copyWith(
            color: context.customColors.secondaryColor,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
