import 'package:flutter/material.dart';
import 'package:quick_mart/core/utils/assets_data.dart';
import 'package:quick_mart/core/widgets/empty_body.dart';

class EmptyCompletedOrder extends StatelessWidget {
  const EmptyCompletedOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return EmptyBody(
      image: AssetsData.ongoingOrder,
      title: 'No completed order',
      desc:
          'We don\'t have any past orders that have been completed. Start shopping now and create your first order with us.',
    );
  }
}
