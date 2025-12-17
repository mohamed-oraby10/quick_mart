import 'package:flutter/material.dart';
import 'package:quick_mart/core/utils/assets_data.dart';
import 'package:quick_mart/core/widgets/empty_body.dart';

class EmptyCart extends StatelessWidget {
  const EmptyCart({super.key});

  @override
  Widget build(BuildContext context) {
    return EmptyBody(
      image: AssetsData.cart,
      title: 'Your cart is empty',
      desc:
          'Looks like you have not added anything in your cart. Go ahead and explore top categories.',
    );
  }
}
