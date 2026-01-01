import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quick_mart/Features/Cart/domain/entities/cart_item_entity.dart';
import 'package:quick_mart/Features/Checkout/data/repos/checkout_repo_impl.dart';
import 'package:quick_mart/Features/Checkout/domain/use_cases/save_order_use_case.dart';
import 'package:quick_mart/Features/Checkout/presentation/manager/save_order_cubit/save_order_cubit.dart';
import 'package:quick_mart/Features/Checkout/presentation/views/widgets/checkout_view_body.dart';
import 'package:quick_mart/core/utils/functions/setup_service_locator.dart';

class CheckoutView extends StatelessWidget {
  const CheckoutView({super.key, required this.products});
  final List<CartItemEntity> products;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              SaveOrderCubit(SaveOrderUseCase(getIt.get<CheckoutRepoImpl>())),
        ),
      ],
      child: Scaffold(body: CheckoutViewBody(products: products)),
    );
  }
}
