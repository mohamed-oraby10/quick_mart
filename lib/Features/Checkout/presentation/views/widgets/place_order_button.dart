import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:quick_mart/Features/Cart/presentation/manager/cart_cubit/cart_cubit.dart';
import 'package:quick_mart/Features/Checkout/domain/entities/order_entity.dart';
import 'package:quick_mart/Features/Checkout/presentation/manager/save_order_cubit/save_order_cubit.dart';
import 'package:quick_mart/core/extensions/app_localization_extension.dart';
import 'package:quick_mart/core/utils/app_routes.dart';
import 'package:quick_mart/core/utils/functions/show_error_snak_bar.dart';
import 'package:quick_mart/core/widgets/app_circular_progress_indicator.dart';
import 'package:quick_mart/core/widgets/main_button.dart';

class PlaceOrderButton extends StatelessWidget {
  const PlaceOrderButton({super.key, required this.order});
  final OrderEntity order;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SaveOrderCubit, SaveOrderState>(
      listener: (context, state) {
        if (state is SaveOrderSuccess) {
          GoRouter.of(context).go(AppRoutes.kOrderPlaceSuccessfullyView);
        } else if (state is SaveOrderFailure) {
          showErrorSnakBar(context, content: state.errMessage);
        }
      },
      builder: (context, state) {
        if (state is SaveOrderLoading) {
          return const AppCircularProgressIndicator();
        }
        return MainButton(
          text: context.locale.place_order,
          onTap: () {
            context.read<CartCubit>().clearCart();
            context.read<SaveOrderCubit>().saveOrder(order: order);
          },
        );
      },
    );
  }
}
