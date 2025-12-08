import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:quick_mart/core/utils/styles.dart';

class ItemsCountReview extends StatelessWidget {
  const ItemsCountReview({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Items (2)', style: Styles.body2Medium),
          Icon(Iconsax.arrow_right_3_outline, size: 32.sp),
        ],
      ),
    );
  }
}
