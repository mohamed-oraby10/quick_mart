import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/core/extensions/app_localization_extension.dart';
import 'package:quick_mart/core/utils/styles.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({
    super.key,
    required this.hint,
    required this.text,
    this.controller,
  });
  final String hint, text;
  final TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(text, style: Styles.body2Medium),
        SizedBox(height: 8.h),
        Padding(
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
      ],
    );
  }
}
