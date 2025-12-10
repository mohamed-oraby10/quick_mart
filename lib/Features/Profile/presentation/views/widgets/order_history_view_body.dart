import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:quick_mart/Features/Profile/presentation/views/widgets/ongoing_order_item.dart';
import 'package:quick_mart/Features/Profile/presentation/views/widgets/ongoing_orders_list_view.dart';
import 'package:quick_mart/Features/Profile/presentation/views/widgets/order_view_button_section.dart';
// import 'package:quick_mart/core/utils/assets_data.dart';
import 'package:quick_mart/core/widgets/custom_app_bar.dart';
// import 'package:quick_mart/core/widgets/empty_body.dart';

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
          // EmptyBody(
          //   image: AssetsData.ongoingOrder,
          //   title: 'No ongoing order',
          //   desc:
          //       'We currently don\'t have any active orders in progress. Feel free to explore our products and place a new order.',
          // ),
          OngoingOrdersListView()
        ],
      ),
    );
  }
}
