import 'package:flutter/material.dart';
import 'package:quick_mart/Features/Cart/presentation/views/widgets/product_details_container.dart';
import 'package:quick_mart/Features/Cart/presentation/views/widgets/product_image_details.dart';

class ProductDetailsViewBody extends StatelessWidget {
  const ProductDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ProductImageDetails(),
        Expanded(child: ProductDetailsContainer()),
       
      ],
    );
  }
}
