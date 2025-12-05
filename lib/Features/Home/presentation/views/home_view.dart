import 'package:flutter/material.dart';
import 'package:quick_mart/Features/Home/presentation/views/widgets/home_view_body.dart';
import 'package:quick_mart/core/widgets/app_bottom_navigation_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: AppBottomNavigationBar(),
      body: HomeViewBody(),
    );
  }
}
