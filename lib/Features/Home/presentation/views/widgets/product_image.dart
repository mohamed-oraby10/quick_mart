import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quick_mart/Features/Home/presentation/views/widgets/favourite_icon.dart';
import 'package:quick_mart/core/utils/app_colors.dart';

class ProductImage extends StatelessWidget {
  const ProductImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 160.w,
          height: 138.h,
          decoration: BoxDecoration(
            color: AppColors.grey100,
            borderRadius: BorderRadius.circular(24.r),
          ),
          child: SvgPicture.asset(
            'assets/images/Vector.svg',
            height: 100.h,
            width: 150.w,
          ),
        ),
        Align(alignment: Alignment.topRight, child: FavouriteIcon()),
      ],
    );
  }
}
