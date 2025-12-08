import 'package:flutter/material.dart';
import 'package:quick_mart/Features/Cart/presentation/views/widgets/order_info_row.dart';

class OrderDatails extends StatelessWidget {
  const OrderDatails({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        OrderInfoRow(title: 'Full Name', value: ''),
        OrderInfoRow(title: 'Mobile Number', value: ''),
        OrderInfoRow(title: 'Province', value: ''),
        OrderInfoRow(title: 'City', value: ''),
        OrderInfoRow(title: 'Street Address', value: ''),
      ],
    );
  }
}
