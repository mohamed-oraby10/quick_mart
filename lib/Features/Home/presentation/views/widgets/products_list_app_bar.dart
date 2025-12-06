import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:quick_mart/core/utils/styles.dart';
import 'package:quick_mart/core/widgets/arrow_left_icon.dart';

class ProductsListAppBar extends StatelessWidget {
  const ProductsListAppBar({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        ArrowLeftIcon(),
        SizedBox(width: 12.w),
        Text(title, style: Styles.body2Medium),
        Spacer(),
        IconButton(
          onPressed: () {},
          icon: Icon(Iconsax.setting_4_outline, size: 32.sp),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Iconsax.search_normal_1_outline, size: 32.sp),
        ),
      ],
    );
  }
}
