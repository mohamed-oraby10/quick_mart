import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/Features/Checkout/presentation/views/widgets/orders_list_view.dart';
import 'package:quick_mart/core/widgets/custom_app_bar.dart';

class OrderItemsViewBody extends StatelessWidget {
  const OrderItemsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(text: 'Items'),
          OrdersListView(),
        ],
      ),
    );
  }
}
