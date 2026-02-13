import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/Features/Profile/presentation/views/widgets/ongoing_order_time.dart';
import 'package:quick_mart/Features/Profile/presentation/views/widgets/ongoing_product_item.dart';

class OngoingOrderItem extends StatelessWidget {
  const OngoingOrderItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          OngoingOrderTime(),
          SizedBox(height: 8.h),
          OngoingProductItem(),
        ],
      ),
    );
  }
}
