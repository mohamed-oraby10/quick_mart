import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quick_mart/Features/Wishlist/data/repos/wishlist_repo_impl.dart';
import 'package:quick_mart/Features/Wishlist/presentation/manager/cubit/wishlist_cubit.dart';
import 'package:quick_mart/Features/Wishlist/presentation/views/widgets/empty_wishlist.dart';
import 'package:quick_mart/Features/Wishlist/presentation/views/widgets/wishlist_view_body.dart';
import 'package:quick_mart/core/widgets/app_bottom_navigation_bar.dart';

class WishlistView extends StatelessWidget {
  const WishlistView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => WishlistCubit(WishlistRepoImpl()),
      child: Scaffold(
        body: BlocBuilder<WishlistCubit, WishlistState>(
          builder: (context, state) {
            if (state is WishlistLoaded) {
              return WishlistViewBody(products: state.cartItems);
            } else {
              return EmptyWishlist();
            }
          },
        ),

        bottomNavigationBar: AppBottomNavigationBar(),
      ),
    );
  }
}
