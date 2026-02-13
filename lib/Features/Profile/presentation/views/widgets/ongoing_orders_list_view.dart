import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quick_mart/Features/Profile/presentation/manager/fetch_ongoing_orders_cubit/fetch_ongoing_orders_cubit.dart';
import 'package:quick_mart/Features/Profile/presentation/views/widgets/empty_ongoing_order.dart';
import 'package:quick_mart/Features/Profile/presentation/views/widgets/ongoing_order_item.dart';
import 'package:quick_mart/core/widgets/app_circular_progress_indicator.dart';

class OngoingOrdersListView extends StatelessWidget {
  const OngoingOrdersListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchOngoingOrdersCubit, FetchOngoingOrdersState>(
      builder: (context, state) {
        if (state is FetchOngoingOrdersLoading) {
          return const AppCircularProgressIndicator();
        } else if (state is FetchOngoingOrdersSuccess) {
          final orders = state.orders;
          if (orders.isEmpty) {
            return EmptyOngoingOrder();
          }
          return ListView.builder(
            padding: EdgeInsets.zero,
            physics: BouncingScrollPhysics(),
            itemCount: orders.length,
            itemBuilder: (context, index) {
              return OngoingOrderItem(order: orders[index]);
            },
          );
        } else if (state is FetchOngoingOrdersFailure) {
          return Center(child: Text(state.errMessage));
        } else {
          return Center(child: Text('No prodcuts yet'));
        }
      },
    );
  }
}
