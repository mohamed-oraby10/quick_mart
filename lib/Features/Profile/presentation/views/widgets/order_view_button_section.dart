import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/Features/Profile/presentation/views/widgets/order_view_button.dart';
import 'package:quick_mart/core/utils/theme/extensions/theme_extension.dart';

class OrderViewButtonSection extends StatelessWidget {
  const OrderViewButtonSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48.h,
      width: double.infinity,
      decoration: BoxDecoration(
        color: context.customColors.buttonColor,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          OrderViewButton(text: 'Ongoing', onTap: () {}),
          SizedBox(width: 8.w),
          OrderViewButton(text: 'Completed'),
        ],
      ),
    );
  }
}
