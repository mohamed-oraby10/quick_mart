import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:quick_mart/Features/Cart/presentation/views/widgets/cart_items_list_view.dart';
import 'package:quick_mart/Features/Cart/presentation/views/widgets/cart_view_app_bar.dart';
import 'package:quick_mart/Features/Cart/presentation/views/widgets/order_info_section.dart';
import 'package:quick_mart/Features/Home/domain/entities/product_entity.dart';
import 'package:quick_mart/core/utils/app_routes.dart';
import 'package:quick_mart/core/widgets/main_button.dart';

class CartViewBody extends StatelessWidget {
  const CartViewBody({super.key, required this.products});
  final List<ProductEntity> products;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 44.h),
          CartViewAppBar(),
          CartItemsListView(products: products),
          OrderInfoSection(),
          SizedBox(height: 24.h),
          MainButton(
            text: 'Checkout (${products.length})',
            onTap: () => GoRouter.of(context).push(AppRoutes.kCheckoutView),
          ),
        ],
      ),
    );
  }
}
