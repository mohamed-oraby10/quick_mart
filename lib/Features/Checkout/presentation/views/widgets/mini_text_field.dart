import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/core/extensions/app_localization_extension.dart';
import 'package:quick_mart/core/utils/styles.dart';

class MiniTextField extends StatelessWidget {
  const MiniTextField({super.key, required this.hint, required this.text, required this.controller});
  final String hint;
  final String text;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(text, style: Styles.body2Medium),
        SizedBox(height: 8.h),
        SizedBox(
          width: 160.w,
          height: 60.h,
          child: Padding(
            padding: EdgeInsets.only(bottom: 12.h),
            child: TextFormField(
              controller: controller,
              validator: (value) {
                if (value!.isEmpty) {
                  return context.locale.field_required;
                }
                return null;
              },
              decoration: InputDecoration(hintText: hint),
            ),
          ),
        ),
      ],
    );
  }
}
