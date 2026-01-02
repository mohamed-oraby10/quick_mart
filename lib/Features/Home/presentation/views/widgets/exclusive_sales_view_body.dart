import 'package:flutter/material.dart';
import 'package:quick_mart/Features/Home/presentation/views/widgets/custom_products_view_body.dart';

class ExclusiveSalesViewBody extends StatelessWidget {
  const ExclusiveSalesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomProductsViewBody(appBarTitle: 'Exclusive Sales');
  }
}
