import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/Features/Cart/presentation/views/widgets/product_details_app_bar.dart';
import 'package:quick_mart/Features/Home/domain/entities/product_entity.dart';

class ProductImageDetails extends StatelessWidget {
  const ProductImageDetails({super.key, required this.product});
  final ProductEntity product;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 290.h,
          width: double.infinity,
          child: Center(child: Image.network(product.productImages[0])),
        ),
        ProductDetailsAppBar(),
      ],
    );
  }
}
