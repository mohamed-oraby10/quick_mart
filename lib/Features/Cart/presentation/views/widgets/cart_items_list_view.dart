import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/Features/Cart/presentation/views/widgets/cart_item.dart';

class CartItemsListView extends StatelessWidget {
  const CartItemsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 370.h,
      width: double.infinity,
      child: ListView.builder(
        itemCount: 2,
        padding: EdgeInsets.zero,
        physics: BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return CartItem(isWishlist: false, isOrderView: false,);
        },
      ),
    );
  }
}
