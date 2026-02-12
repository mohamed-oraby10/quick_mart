import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/Features/Cart/presentation/manager/cart_cubit/cart_cubit.dart';
import 'package:quick_mart/Features/Cart/presentation/views/widgets/order_info_section.dart';
import 'package:quick_mart/Features/Checkout/domain/entities/order_entity.dart';
import 'package:quick_mart/Features/Checkout/presentation/views/widgets/checkout_stepper_section.dart';
import 'package:quick_mart/Features/Checkout/presentation/views/widgets/place_order_button.dart';
import 'package:quick_mart/Features/Checkout/presentation/views/widgets/shinpping_order_section.dart';

class CheckoutReviewBody extends StatelessWidget {
  const CheckoutReviewBody({super.key, required this.order});
  final OrderEntity order;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CheckoutStepperSection(isReview: true),
              ShinppingOrderSection(order: order),
              SizedBox(height: 16.h),
              OrderInfoSection(
                products: order.productsList,
                totalPrice: context.read<CartCubit>().calculateTotal(
                  order.productsList,
                ),
              ),
              SizedBox(height: 48.h),
              PlaceOrderButton(order: order,),
            ],
          ),
        ),
      ),
    );
  }
}
