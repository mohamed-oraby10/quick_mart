import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/Features/Cart/domain/entities/cart_item_entity.dart';
import 'package:quick_mart/Features/Cart/presentation/views/widgets/order_info_row.dart';
import 'package:quick_mart/core/extensions/app_localization_extension.dart';
import 'package:quick_mart/core/utils/styles.dart';

class OrderInfoSection extends StatelessWidget {
  const OrderInfoSection({
    super.key,
    required this.products,
    required this.totalPrice,
  });
  final List<CartItemEntity> products;
  final num totalPrice;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(context.locale.order_info, style: Styles.body1Medium),
        SizedBox(height: 12.h),
        OrderInfoRow(
          title: context.locale.subtotal,
          value: '\$${totalPrice.toStringAsFixed(2)}',
        ),
        OrderInfoRow(title: context.locale.shipping_cost, value: '\$0.00'),
        Padding(
          padding: EdgeInsets.only(bottom: 17.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(context.locale.total, style: Styles.body1Medium),
              Text(
                '\$${totalPrice.toStringAsFixed(2)}',
                style: Styles.body1Medium,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
