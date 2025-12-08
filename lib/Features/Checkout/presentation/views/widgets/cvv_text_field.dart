import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/core/utils/styles.dart';

class CvvTextField extends StatelessWidget {
  const CvvTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('CVV', style: Styles.body2Medium),
        SizedBox(
          width: 160.w,
          height: 60.h,
          child: TextField(
            keyboardType: TextInputType.number,
            inputFormatters: [
              LengthLimitingTextInputFormatter(3),
              FilteringTextInputFormatter.digitsOnly,
            ],
            decoration: InputDecoration(hintText: '123'),
          ),
        ),
      ],
    );
  }
}
