import 'package:flutter/material.dart';
import 'package:quick_mart/Features/Cart/presentation/views/widgets/product_details_view_body.dart';
import 'package:quick_mart/Features/Home/domain/entities/product_entity.dart';
import 'package:quick_mart/core/utils/app_colors.dart';

class ProductDetailsView extends StatelessWidget {
  const ProductDetailsView({super.key, required this.product});
  final ProductEntity product;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.grey100,
      body: ProductDetailsViewBody(product: product),
    );
  }
}
