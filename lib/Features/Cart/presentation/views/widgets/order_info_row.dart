import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/core/utils/styles.dart';
import 'package:quick_mart/core/utils/theme/extensions/theme_extension.dart';

class OrderInfoRow extends StatelessWidget {
  const OrderInfoRow({super.key, required this.title, required this.value});
  final String title, value;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 17.h),
      child: Row(
        children: [
          Text(
            title,
            style: Styles.captionRegular.copyWith(
              color: context.customColors.secondaryColor,
            ),
          ),
          Spacer(),
          Expanded(
            child: Text(
              value,
              textAlign: TextAlign.end,
              style: Styles.captionRegular.copyWith(
                color: context.customColors.secondaryColor,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
