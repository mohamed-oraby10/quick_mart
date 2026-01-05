import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/core/utils/styles.dart';
import 'package:quick_mart/core/utils/theme/extensions/theme_extension.dart';

class LanguageTap extends StatelessWidget {
  const LanguageTap({super.key, required this.title, this.onTap});
  final String title;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
        return GestureDetector(
          onTap: onTap,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 6.h, horizontal: 16.w),
                child: Text(title, style: Styles.body2Medium),
              ),
              Divider(thickness: 1, color: context.customColors.buttonColor),
            ],
          ),
        );
  }
}
