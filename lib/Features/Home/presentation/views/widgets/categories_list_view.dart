import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/Features/Home/domain/data_sources/categories_list.dart';
import 'package:quick_mart/Features/Home/presentation/views/widgets/category_item.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 72.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categoriesList.length,
        itemBuilder: (context, index) {
          return CategoryItem(categoryModel: categoriesList[index]);
        },
      ),
    );
  }
}
