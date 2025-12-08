import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/core/utils/styles.dart';

class CardTextField extends StatelessWidget {
  const CardTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Card Number', style: Styles.body2Medium),
        TextField(
          keyboardType: TextInputType.number,
          inputFormatters: [
            LengthLimitingTextInputFormatter(16),
            FilteringTextInputFormatter.digitsOnly,
          ],
          decoration: InputDecoration(hintText: '4111 1111 1111 1111'),
        ),
        SizedBox(height: 12.h),
      ],
    );
  }
}
