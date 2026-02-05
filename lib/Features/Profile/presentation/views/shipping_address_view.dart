import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quick_mart/Features/Checkout/data/repos/checkout_repo_impl.dart';
import 'package:quick_mart/Features/Checkout/domain/use_cases/save_order_use_case.dart';
import 'package:quick_mart/Features/Checkout/presentation/manager/save_order_cubit/save_order_cubit.dart';
import 'package:quick_mart/Features/Profile/presentation/views/widgets/shipping_address_view_body.dart';
import 'package:quick_mart/core/utils/functions/setup_service_locator.dart';

class ShippingAddressView extends StatelessWidget {
  const ShippingAddressView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          SaveOrderCubit(SaveOrderUseCase(getIt.get<CheckoutRepoImpl>())),
      child: const Scaffold(body: SafeArea(child: ShippingAddressViewBody())),
    );
  }
}
