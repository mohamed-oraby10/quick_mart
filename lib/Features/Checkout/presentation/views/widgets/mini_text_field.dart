import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/core/utils/styles.dart';

class MiniTextField extends StatelessWidget {
  const MiniTextField({
    super.key,
    this.onChanged,
    required this.hint,
    required this.text,
  });
  final void Function(String)? onChanged;
  final String hint;
  final String text;
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
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Field is required';
                }
                return null;
              },
              onChanged: (value) {},
              decoration: InputDecoration(hintText: hint),
            ),
          ),
        ),
      ],
    );
  }
}
