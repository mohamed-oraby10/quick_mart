import 'package:flutter/material.dart';
import 'package:quick_mart/Features/Profile/presentation/views/widgets/ongoing_order_item.dart';

class OngoingOrdersListView extends StatelessWidget {
  const OngoingOrdersListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding: EdgeInsets.zero,
        physics: BouncingScrollPhysics(),
        itemCount: 2,
        itemBuilder: (context, index) {
          return OngoingOrderItem();
        },
      ),
    );
  }
}
