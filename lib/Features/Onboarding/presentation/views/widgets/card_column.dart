import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quick_mart/core/utils/app_colors.dart';
import 'package:quick_mart/core/utils/assets_data.dart';
import 'package:quick_mart/core/utils/theme/extensions/theme_extension.dart';
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
              SvgPicture.asset(
                AssetsData.logo,
                color: context.isDarkMode
                    ? AppColors.brandWhite
                    : AppColors.brandBlack,
              ),
              Spacer(),
              CustomTextButton(textButton: 'Skip for now'),
            ],
          ),
        ),
      ],
    );
  }
}
