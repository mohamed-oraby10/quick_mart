import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:quick_mart/Features/Home/domain/emuns/filter_type.dart';
import 'package:quick_mart/Features/Home/presentation/manager/fetch_leatest_product_cubit/fetch_leatest_products_cubit.dart';
import 'package:quick_mart/Features/Home/presentation/manager/filter_cubit/filter_cubit.dart';
import 'package:quick_mart/core/extensions/app_localization_extension.dart';
import 'package:quick_mart/core/widgets/main_button.dart';

class FilterButton extends StatelessWidget {
  const FilterButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FilterCubit, FilterType?>(
      builder: (context, state) {
        if (state == null) {
          return const SizedBox.shrink();
        }
        return MainButton(
          text: context.locale.apply,
          onTap: () {
            BlocProvider.of<FetchLeatestProductsCubit>(
              context,
            ).filterProducts();
            GoRouter.of(context).pop();
          },
        );
      },
    );
  }
}
