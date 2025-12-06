import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/Features/Cart/presentation/views/widgets/product_badge.dart';
import 'package:quick_mart/Features/Cart/presentation/views/widgets/product_description.dart';
import 'package:quick_mart/Features/Cart/presentation/views/widgets/product_title_and_price.dart';
import 'package:quick_mart/Features/Cart/presentation/views/widgets/rating_row.dart';

class DetailsSection extends StatelessWidget {
  const DetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ProductBadge(),
        SizedBox(height: 6.h),
        ProductTitleAndPrice(),
        RatingRow(),
        ProductDescription(),
        SizedBox(height: 12.h),
      ],
    );
  }
}
