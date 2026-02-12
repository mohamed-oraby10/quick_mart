import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/Features/Cart/domain/entities/cart_item_entity.dart';
import 'package:quick_mart/Features/Checkout/presentation/views/widgets/orders_list_view.dart';
import 'package:quick_mart/core/extensions/app_localization_extension.dart';
import 'package:quick_mart/core/widgets/custom_app_bar.dart';

class OrderItemsViewBody extends StatelessWidget {
  const OrderItemsViewBody({super.key, required this.products});
  final List<CartItemEntity> products;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20.h),
          CustomAppBar(text: context.locale.items),
          OrdersListView(products: products),
        ],
      ),
    );
  }
}
