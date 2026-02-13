import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quick_mart/Features/Profile/data/repos/profile_repo_impl.dart';
import 'package:quick_mart/Features/Profile/domain/use_cases/fetch_ongoing_orders_use_case.dart';
import 'package:quick_mart/Features/Profile/presentation/manager/fetch_ongoing_orders_cubit/fetch_ongoing_orders_cubit.dart';
import 'package:quick_mart/Features/Profile/presentation/views/widgets/order_history_view_body.dart';
import 'package:quick_mart/core/utils/functions/setup_service_locator.dart';

class OrderHistoryView extends StatelessWidget {
  const OrderHistoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FetchOngoingOrdersCubit(
        FetchOngoingOrdersUseCase(getIt.get<ProfileRepoImpl>()),
      )..fetchOngoingOrders(),
      child: DefaultTabController(
        length: 2,
        child: const Scaffold(body: SafeArea(child: OrderHistoryViewBody())),
      ),
    );
  }
}
