import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/Features/Profile/presentation/views/widgets/completed_order_list_view.dart';
import 'package:quick_mart/Features/Profile/presentation/views/widgets/empty_ongoing_order.dart';
import 'package:quick_mart/Features/Profile/presentation/views/widgets/order_view_button_section.dart';
import 'package:quick_mart/core/widgets/custom_app_bar.dart';

class OrderHistoryViewBody extends StatelessWidget {
  const OrderHistoryViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.symmetric(horizontal: 16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10.h),
          CustomAppBar(text: 'Order History'),
          SizedBox(height: 8.h),
          OrderViewButtonSection(),
          SizedBox(height: 28.h),
          Expanded(
            child: TabBarView(
              children: [EmptyOngoingOrder(), CompletedOrderListView()],
            ),
          ),
        ],
      ),
    );
  }
}
