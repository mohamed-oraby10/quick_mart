import 'package:flutter/material.dart';
import 'package:quick_mart/Features/Cart/presentation/views/widgets/product_details_container.dart';
import 'package:quick_mart/Features/Cart/presentation/views/widgets/product_image_details.dart';
import 'package:quick_mart/Features/Home/domain/entities/product_entity.dart';

class ProductDetailsViewBody extends StatelessWidget {
  const ProductDetailsViewBody({super.key, required this.product});
  final ProductEntity product;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ProductImageDetails(product: product,),
        Expanded(child: ProductDetailsContainer(product: product)),
      ],
    );
  }
}
