import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/Features/Profile/domain/entities/order_history_entity.dart';
import 'package:quick_mart/Features/Profile/presentation/views/widgets/ongoing_order_time.dart';
import 'package:quick_mart/Features/Profile/presentation/views/widgets/ongoing_products_list_view.dart';

class OngoingOrderItem extends StatelessWidget {
  const OngoingOrderItem({super.key, required this.order});
  final OrderHistoryEntity order;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          OngoingOrderTime(),
          SizedBox(height: 8.h),
          OngoingProductsListView(products: order.products),
        ],
      ),
    );
  }
}
