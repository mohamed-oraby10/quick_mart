import 'package:flutter/material.dart';
// import 'package:quick_mart/Features/Wishlist/presentation/views/widgets/wishlist_view_body.dart';
import 'package:quick_mart/core/utils/assets_data.dart';
import 'package:quick_mart/core/widgets/app_bottom_navigation_bar.dart';
import 'package:quick_mart/core/widgets/empty_body.dart';

class WishlistView extends StatelessWidget {
  const WishlistView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: EmptyBody(
        image: AssetsData.wishList,
        title: 'Your wishlist is empty',
        desc: 'Tap heart button to start saving your favorite items.',
      ),
      //  WishlistViewBody(),
      bottomNavigationBar: AppBottomNavigationBar(),
    );
  }
}
