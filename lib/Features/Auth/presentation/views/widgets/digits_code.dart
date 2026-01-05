import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/core/extensions/app_localization_extension.dart';
import 'package:quick_mart/core/utils/assets_data.dart';
import 'package:quick_mart/core/utils/styles.dart';
import 'package:quick_mart/core/widgets/custom_icon.dart';

class DigitsCode extends StatelessWidget {
  const DigitsCode({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomIcon(imageUrl: AssetsData.passwordVerify),
        SizedBox(width: 8.w),
        Expanded(
          child: Text(
            context.locale.digit_verification_sent,
            style: Styles.captionSemiBold,
            maxLines: 2,
          ),
        ),
      ],
    );
  }
}
