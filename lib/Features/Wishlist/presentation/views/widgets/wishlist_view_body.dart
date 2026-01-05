import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/Features/Cart/domain/entities/cart_item_entity.dart';
import 'package:quick_mart/Features/Wishlist/presentation/views/widgets/wishlist_list_view.dart';
import 'package:quick_mart/core/extensions/app_localization_extension.dart';
import 'package:quick_mart/core/widgets/custom_app_bar.dart';

class WishlistViewBody extends StatelessWidget {
  const WishlistViewBody({super.key, required this.products});
  final List<CartItemEntity> products;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 44.h),
          CustomAppBar(text: context.locale.wishlist),
          WishlistListView(products: products),
        ],
      ),
    );
  }
}
