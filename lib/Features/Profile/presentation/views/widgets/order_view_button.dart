import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/core/widgets/main_button.dart';

class OrderViewButton extends StatelessWidget {
  const OrderViewButton({super.key, required this.text, this.onTap});
  final String text;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 156.w,
      height: 40.h,
      child: MainButton(text: text, onTap: onTap),
    );
  }
}
