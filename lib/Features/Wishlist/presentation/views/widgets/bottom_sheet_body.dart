import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:quick_mart/Features/Cart/presentation/manager/cart_cubit/cart_cubit.dart';
import 'package:quick_mart/Features/Cart/presentation/manager/cart_cubit/cart_state.dart';
import 'package:quick_mart/Features/Home/domain/entities/product_entity.dart';
import 'package:quick_mart/Features/Wishlist/presentation/manager/cubit/wishlist_cubit.dart';
import 'package:quick_mart/core/utils/functions/show_success_snack_bar.dart';
import 'package:quick_mart/core/utils/styles.dart';
import 'package:quick_mart/core/widgets/disabled_app_button.dart';
import 'package:quick_mart/core/widgets/main_button.dart';

class BottomSheetBody extends StatelessWidget {
  const BottomSheetBody({
    super.key,
    required this.product,
    required this.text,
    required this.isWishlist,
  });
  final ProductEntity product;
  final String text;
  final bool isWishlist;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 32.h),
          Text('Delete product from $text', style: Styles.body1Medium),
          SizedBox(height: 24.h),
          BlocListener<CartCubit, CartState>(
            listener: (context, state) {
              if (state is CartLoaded) {
                showSuccessSnakBar(
                  context,
                  content: 'Product removed successfully',
                );
                GoRouter.of(context).pop();
              }
            },
            child: MainButton(
              text: 'Delete (1) product',
              onTap: () {
                isWishlist
                    ? BlocProvider.of<WishlistCubit>(context).remove(product)
                    : BlocProvider.of<CartCubit>(context).remove(product);
              },
            ),
          ),
          SizedBox(height: 12.h),
          DisabledAppButton(),
        ],
      ),
    );
  }
}
