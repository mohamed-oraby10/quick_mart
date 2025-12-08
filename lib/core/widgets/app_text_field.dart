import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/core/utils/styles.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({
    super.key,
    this.onChanged,
    required this.hint,
    required this.text,
  });
  final void Function(String)? onChanged;
  final String hint, text;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(text, style: Styles.body2Medium),
        SizedBox(height: 8.h),
        Padding(
          padding: EdgeInsets.only(bottom: 12.h),
          child: TextField(
            onChanged: onChanged,
            decoration: InputDecoration(hintText: hint),
          ),
        ),
      ],
    );
  }
}
