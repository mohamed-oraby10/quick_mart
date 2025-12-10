import 'package:flutter/material.dart';
import 'package:quick_mart/core/utils/assets_data.dart';
import 'package:quick_mart/core/widgets/empty_body.dart';

class EmptyWishlist extends StatelessWidget {
  const EmptyWishlist({super.key});

  @override
  Widget build(BuildContext context) {
    return EmptyBody(
      image: AssetsData.wishList,
      title: 'Your wishlist is empty',
      desc: 'Tap heart button to start saving your favorite items.',
    );
  }
}
