import 'package:flutter/material.dart';
import 'package:quick_mart/Features/Cart/presentation/views/widgets/order_info_row.dart';
import 'package:quick_mart/core/extensions/app_localization_extension.dart';

class OrderDatails extends StatelessWidget {
  const OrderDatails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        OrderInfoRow(title: context.locale.full_name, value: ''),
        OrderInfoRow(title: context.locale.phone_number, value: ''),
        OrderInfoRow(title: context.locale.province, value: ''),
        OrderInfoRow(title: context.locale.city, value: ''),
        OrderInfoRow(title: context.locale.street_address, value: ''),
      ],
    );
  }
}
