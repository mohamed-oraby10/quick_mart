import 'package:flutter/material.dart';
import 'package:quick_mart/Features/Profile/presentation/views/widgets/ongoing_product_item.dart';

class OngoingProductsListView extends StatelessWidget {
  const OngoingProductsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      physics: BouncingScrollPhysics(),
      itemCount: 2,
      itemBuilder: (context, index) {
        return OngoingProductItem();
      },
    );
  }
}