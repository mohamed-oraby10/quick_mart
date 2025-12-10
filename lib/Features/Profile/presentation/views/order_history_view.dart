import 'package:flutter/material.dart';
import 'package:quick_mart/Features/Profile/presentation/views/widgets/order_history_view_body.dart';

class OrderHistoryView extends StatelessWidget {
  const OrderHistoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: const Scaffold(body: SafeArea(child: OrderHistoryViewBody())),
    );
  }
}
