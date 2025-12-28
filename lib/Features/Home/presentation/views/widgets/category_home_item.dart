import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/Features/Home/domain/entities/category_entity.dart';
import 'package:quick_mart/core/utils/styles.dart';
import 'package:quick_mart/core/utils/theme/extensions/theme_extension.dart';

class CategoryHomeItem extends StatelessWidget {
  const CategoryHomeItem({super.key, required this.categoryEntity});
  final CategoryEntity categoryEntity;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 12.h, right: 8.w),
      child: GestureDetector(
        onTap: () {},
        child: Container(
          height: 60.h,
          width: 76.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.r),
            border: Border.all(color: context.customColors.buttonColor),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Image.asset(categoryModel.urlImage),
              // SizedBox(height: 2.h),
              Text(categoryEntity.categoryName, style: Styles.captionSemiBold),
            ],
          ),
        ),
      ),
    );
  }
}
