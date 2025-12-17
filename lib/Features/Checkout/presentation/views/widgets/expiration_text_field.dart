import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/core/utils/styles.dart';

class ExpirationTextField extends StatelessWidget {
  const ExpirationTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Expiration', style: Styles.body2Medium),
        SizedBox(
          width: 160.w,
          height: 60.h,
          child: TextField(
            keyboardType: TextInputType.number,
            inputFormatters: [
              LengthLimitingTextInputFormatter(5),
              FilteringTextInputFormatter.digitsOnly,
            ],
            decoration: InputDecoration(hintText: 'MM/YY'),
          ),
        ),
      ],
    );
  }
}
