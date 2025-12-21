import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/Features/Cart/presentation/views/widgets/cart_item.dart';
import 'package:quick_mart/Features/Home/domain/entities/product_entity.dart';

class CartItemsListView extends StatelessWidget {
  const CartItemsListView({super.key, required this.products});
  final List<ProductEntity> products;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 370.h,
      width: double.infinity,
      child: ListView.builder(
        itemCount: products.length,
        padding: EdgeInsets.zero,
        physics: BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return CartItem(
            isWishlist: false,
            isOrderView: false,
            product: products[index],
          );
        },
      ),
    );
  }
}
