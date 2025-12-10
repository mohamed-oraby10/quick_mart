import 'package:flutter/material.dart';
import 'package:quick_mart/core/utils/assets_data.dart';
import 'package:quick_mart/core/widgets/empty_body.dart';

class EmptyOngoingOrder extends StatelessWidget {
  const EmptyOngoingOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return EmptyBody(
      image: AssetsData.ongoingOrder,
      title: 'No ongoing order',
      desc:
          'We currently don\'t have any active orders in progress. Feel free to explore our products and place a new order.',
    );
  }
}
