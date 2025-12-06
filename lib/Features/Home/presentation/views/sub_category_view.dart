import 'package:flutter/material.dart';
import 'package:quick_mart/Features/Home/presentation/views/widgets/sub_category_view_body.dart';
import 'package:quick_mart/core/widgets/app_bottom_navigation_bar.dart';

class SubCategoryView extends StatelessWidget {
  const SubCategoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: AppBottomNavigationBar(),
      body:SubCategoryViewBody() ,
    );
  }
}