import 'package:flutter/material.dart';
import 'package:quick_mart/core/extensions/app_localization_extension.dart';
import 'package:quick_mart/core/utils/assets_data.dart';
import 'package:quick_mart/core/widgets/empty_body.dart';

class EmptyWishlist extends StatelessWidget {
  const EmptyWishlist({super.key});

  @override
  Widget build(BuildContext context) {
    return EmptyBody(
      image: AssetsData.wishList,
      title: context.locale.your_wishlist_empty,
      desc: context.locale.wishlist_empty_desc,
    );
  }
}
