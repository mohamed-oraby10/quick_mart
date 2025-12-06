import 'package:flutter/material.dart';
import 'package:quick_mart/Features/Home/presentation/views/widgets/exclusive_sales_view_body.dart';
import 'package:quick_mart/core/widgets/app_bottom_navigation_bar.dart';

class ExclusiveSalesView extends StatelessWidget {
  const ExclusiveSalesView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ExclusiveSalesViewBody(),
      bottomNavigationBar: AppBottomNavigationBar(),
    );
  }
}
