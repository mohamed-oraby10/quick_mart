import 'package:flutter/material.dart';
import 'package:quick_mart/Features/Cart/presentation/views/widgets/product_details_view_body.dart';
import 'package:quick_mart/core/utils/app_colors.dart';

class ProductDetailsView extends StatelessWidget {
  const ProductDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.grey100,
      body: ProductDetailsViewBody(),
    );
  }
}
