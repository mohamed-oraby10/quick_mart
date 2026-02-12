import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:quick_mart/Features/Cart/presentation/manager/cart_cubit/cart_cubit.dart';
import 'package:quick_mart/Features/Checkout/data/services/paypal_payment_remote_service.dart';
import 'package:quick_mart/Features/Checkout/domain/entities/order_entity.dart';
import 'package:quick_mart/Features/Checkout/domain/use_cases/paypal_payment_use_case.dart';
import 'package:quick_mart/Features/Checkout/presentation/views/widgets/checkout_stepper_section.dart';
import 'package:quick_mart/Features/Checkout/presentation/views/widgets/payment_methods_row.dart';
import 'package:quick_mart/controller/paypal_payment_controller.dart';
import 'package:quick_mart/core/extensions/app_localization_extension.dart';
import 'package:quick_mart/core/utils/app_routes.dart';
import 'package:quick_mart/core/widgets/main_button.dart';

class CheckoutPaymentBody extends StatefulWidget {
  const CheckoutPaymentBody({super.key, required this.order});
  final OrderEntity order;
  @override
  State<CheckoutPaymentBody> createState() => _CheckoutPaymentBodyState();
}

class _CheckoutPaymentBodyState extends State<CheckoutPaymentBody> {
  late final PayPalPaymentController _controller;

  @override
  void initState() {
    super.initState();
    final remoteService = PayPalRemoteService(
      clientId:
          "AVn-WXEygnB0fEgbD0W8EsXDZtZmkHQqOd_02_kHmvhKt0HbtzNKaMW0KqdzjYL9M-AlfzA4JditaiXn",
      secretKey:
          "EIAxfCbGeczhpF1PidzDDU9uKjO2dgHzAXU8UgremAZqncPXW6yCIPILfMZZlleP8maufwbKfFpb9WjS",
    );
    _controller = PayPalPaymentController(
      useCase: PayPalUseCase(remoteService),
    );

    _controller.validateCredentials();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CheckoutStepperSection(isPayment: true),
              PaymentMethodsRow(
                controller: _controller,
                products: widget.order.productsList,
                totalPrice: context.read<CartCubit>().calculateTotal(
                  widget.order.productsList,
                ),
              ),
              SizedBox(height: 125.h),
              MainButton(
                text: context.locale.follow_up,
                onTap: () => GoRouter.of(
                  context,
                ).push(AppRoutes.kCheckoutReviewBody, extra: widget.order),
              ),
              SizedBox(height: 20.h),
            ],
          ),
        ),
      ),
    );
  }
}
