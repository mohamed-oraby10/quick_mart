import 'package:flutter/material.dart';
import 'package:quick_mart/Features/Home/domain/data_sources/categories_list.dart';
import 'package:quick_mart/Features/Home/presentation/views/widgets/category_item.dart';

class CategoriesGridView extends StatelessWidget {
  const CategoriesGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        padding: EdgeInsets.zero,
        physics: BouncingScrollPhysics(),
        itemCount: categoriesList.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
          childAspectRatio: 1.4,
        ),
        itemBuilder: (context, index) {
          return CategoryItem(categoryModel: categoriesList[index]);
        },
      ),
    );
  }
}
