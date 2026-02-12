import 'package:flutter/material.dart';
import 'package:quick_mart/Features/Cart/presentation/views/widgets/order_info_row.dart';
import 'package:quick_mart/Features/Checkout/domain/entities/order_entity.dart';
import 'package:quick_mart/core/extensions/app_localization_extension.dart';

class OrderDatails extends StatelessWidget {
  const OrderDatails({super.key, required this.order});
  final OrderEntity order;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        OrderInfoRow(title: context.locale.full_name, value: order.fullName),
        OrderInfoRow(title: context.locale.phone_number, value: order.phoneNum),
        OrderInfoRow(title: context.locale.province, value: order.provinceName),
        OrderInfoRow(title: context.locale.city, value: order.city),
        OrderInfoRow(
          title: context.locale.street_address,
          value: order.customerAddress,
        ),
      ],
    );
  }
}
