import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/Features/Checkout/domain/entities/order_entity.dart';
import 'package:quick_mart/Features/Checkout/presentation/views/widgets/items_count_review.dart';
import 'package:quick_mart/Features/Checkout/presentation/views/widgets/order_datails.dart';
import 'package:quick_mart/core/extensions/app_localization_extension.dart';
import 'package:quick_mart/core/utils/styles.dart';

class ShinppingOrderSection extends StatelessWidget {
  const ShinppingOrderSection({super.key, required this.order});
  final OrderEntity order;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ItemsCountReview(products: order.productsList),
        SizedBox(height: 28.h),
        Text(context.locale.shipping_address, style: Styles.body1Medium),
        SizedBox(height: 12.h),
        OrderDatails(order: order),
      ],
    );
  }
}
