import 'package:flutter/material.dart';
import 'package:quick_mart/Features/Wishlist/presentation/views/widgets/empty_wishlist.dart';
// import 'package:quick_mart/Features/Wishlist/presentation/views/widgets/wishlist_view_body.dart';
import 'package:quick_mart/core/widgets/app_bottom_navigation_bar.dart';

class WishlistView extends StatelessWidget {
  const WishlistView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: EmptyWishlist(),
      //  WishlistViewBody(),
      bottomNavigationBar: AppBottomNavigationBar(),
    );
  }
}
