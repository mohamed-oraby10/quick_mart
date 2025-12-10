import 'package:flutter/material.dart';
import 'package:quick_mart/Features/Profile/presentation/views/widgets/completed_order_item.dart';

class CompletedOrderListView extends StatelessWidget {
  const CompletedOrderListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 2,
      padding: EdgeInsets.zero,
      physics: BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        return CompletedOrderItem();
      },
    );
  }
}
