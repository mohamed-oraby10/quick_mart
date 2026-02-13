import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:quick_mart/Features/Cart/presentation/views/widgets/cart_product_details.dart';
// import 'package:quick_mart/Features/Cart/presentation/views/widgets/cart_product_image.dart';
import 'package:quick_mart/Features/Profile/presentation/views/widgets/completed_order_time.dart';

class CompletedOrderItem extends StatelessWidget {
  const CompletedOrderItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CompletedOrderTime(),
          SizedBox(height: 8.h),
          Row(
            children: [
              // CartProductImage(),
              // SizedBox(width: 8.w),
              // Expanded(child: CartProductDetails(isWishlist: false)),
            ],
          ),
        ],
      ),
    );
  }
}
