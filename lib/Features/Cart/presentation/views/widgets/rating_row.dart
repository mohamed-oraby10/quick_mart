import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:quick_mart/core/utils/app_colors.dart';
import 'package:quick_mart/core/utils/styles.dart';
import 'package:quick_mart/core/utils/theme/extensions/theme_extension.dart';

class RatingRow extends StatelessWidget {
  const RatingRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        RatingBar.builder(
          unratedColor: context.customColors.buttonColor,
          initialRating: 4.5,
          minRating: 1,
          direction: Axis.horizontal,
          allowHalfRating: true,
          itemCount: 5,
          itemSize: 12.sp,
          itemPadding: EdgeInsets.symmetric(horizontal: 3.w),
          itemBuilder: (context, _) =>
              Icon(Iconsax.star_bulk, color: AppColors.generalOrange2),
          onRatingUpdate: (rating) {},
        ),
        Text('4.5 (2,495 reviews)', style: Styles.overlineSemiBold),
      ],
    );
  }
}
