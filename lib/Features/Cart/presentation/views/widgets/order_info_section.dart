import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/Features/Cart/presentation/views/widgets/order_info_row.dart';
import 'package:quick_mart/core/utils/styles.dart';

class OrderInfoSection extends StatelessWidget {
  const OrderInfoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Order Info', style: Styles.body1Medium),
        SizedBox(height: 12.h),
        OrderInfoRow(title: 'Subtotal', count: 27.25),
        OrderInfoRow(title: 'Shipping Cost', count: 0.00),
        Padding(
          padding: EdgeInsets.only(bottom: 17.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Total', style: Styles.body1Medium),
              Text('\$27.25', style: Styles.body1Medium),
            ],
          ),
        ),
      ],
    );
  }
}
