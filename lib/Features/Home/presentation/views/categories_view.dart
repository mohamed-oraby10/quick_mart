import 'package:flutter/material.dart';
import 'package:quick_mart/Features/Home/presentation/views/widgets/categories_view_body.dart';
import 'package:quick_mart/core/widgets/app_bottom_navigation_bar.dart';

class CategoriesView extends StatelessWidget {
  const CategoriesView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CategoriesViewBody(),
      bottomNavigationBar: AppBottomNavigationBar(),
    );
  }
}