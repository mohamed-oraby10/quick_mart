import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/Features/Cart/presentation/views/widgets/product_badge.dart';
import 'package:quick_mart/Features/Cart/presentation/views/widgets/product_description.dart';
import 'package:quick_mart/Features/Cart/presentation/views/widgets/product_title_and_price.dart';
import 'package:quick_mart/Features/Cart/presentation/views/widgets/rating_row.dart';
import 'package:quick_mart/Features/Home/domain/entities/product_entity.dart';

class DetailsSection extends StatelessWidget {
  const DetailsSection({super.key, required this.product});
final ProductEntity product;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ProductBadge(product: product,),
        SizedBox(height: 6.h),
        ProductTitleAndPrice(product: product,),
        RatingRow(product: product,),
        ProductDescription(product: product,),
        SizedBox(height: 12.h),
      ],
    );
  }
}
