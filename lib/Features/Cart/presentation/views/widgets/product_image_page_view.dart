import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/Features/Home/domain/entities/product_entity.dart';
import 'package:quick_mart/core/widgets/app_smooth_indicator.dart';

class ProductImagePageView extends StatelessWidget {
  const ProductImagePageView({super.key, required this.product});
  final ProductEntity product;

  @override
  Widget build(BuildContext context) {
    PageController pageController = PageController();
    return SizedBox(
      height: 310.h,
      child: PageView.builder(
        itemCount: product.productImages.length,
        controller: pageController,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 290.h,
                width: double.infinity,
                child: Center(
                  child: Image.network(product.productImages[index]),
                ),
              ),
              AppPageIndicator(
                pageController: pageController,
                length: product.productImages.length,
              ),
            ],
          );
        },
      ),
    );
  }
}
