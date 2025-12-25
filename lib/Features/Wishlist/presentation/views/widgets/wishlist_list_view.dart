import 'package:flutter/material.dart';
import 'package:quick_mart/Features/Cart/domain/entities/cart_item_entity.dart';
import 'package:quick_mart/Features/Cart/presentation/views/widgets/cart_item.dart';

class WishlistListView extends StatelessWidget {
  const WishlistListView({super.key, required this.products});
  final List<CartItemEntity> products;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: products.length,
        physics: BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return CartItem(
            isWishlist: true,
            isOrderView: false,
            product: products[index],
          );
        },
      ),
    );
  }
}
