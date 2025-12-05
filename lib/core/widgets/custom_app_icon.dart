import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/core/utils/theme/extensions/theme_extension.dart';

class CustomAppIcon extends StatelessWidget {
  const CustomAppIcon({super.key, required this.icon});
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return  Icon(icon,size: 24.sp,color: context.customColors.buttonColor,);
  }
}
