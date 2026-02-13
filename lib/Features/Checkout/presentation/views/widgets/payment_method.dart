import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quick_mart/core/utils/theme/extensions/theme_extension.dart';

class PaymentMethod extends StatelessWidget {
  const PaymentMethod({super.key, this.onTap, required this.image});
  final void Function()? onTap;
  final String image;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 64.h,
        decoration: BoxDecoration(
          color: context.customColors.cardColor,
          borderRadius: BorderRadius.circular(12.r),
        ),
        child: Center(child: SvgPicture.asset(image)),
      ),
    );
  }
}
