import 'package:flutter/material.dart';
import 'package:quick_mart/Features/Cart/domain/entities/cart_item_entity.dart';
import 'package:quick_mart/Features/Profile/presentation/views/widgets/ongoing_product_item.dart';

class OngoingProductsListView extends StatelessWidget {
  const OngoingProductsListView({super.key, required this.products});
  final List<CartItemEntity> products;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: products.length,
      itemBuilder: (context, index) {
        return OngoingProductItem(product: products[index]);
      },
    );
  }
}
