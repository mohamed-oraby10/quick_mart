import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/Features/Home/domain/emuns/filter_type.dart';
import 'package:quick_mart/Features/Home/presentation/manager/filter_cubit/filter_cubit.dart';
import 'package:quick_mart/core/utils/app_colors.dart';
import 'package:quick_mart/core/utils/styles.dart';
import 'package:quick_mart/core/widgets/custom_check_box.dart';

class CheckBoxBottomSheet extends StatelessWidget {
  const CheckBoxBottomSheet({
    super.key,
    required this.text,
    required this.filterType,
  });

  final String text;
  final FilterType filterType;

  @override
  Widget build(BuildContext context) {
    final selectedFilter =
        context.select<FilterCubit, FilterType?>((cubit) => cubit.state);

    final isChecked = selectedFilter == filterType;

    return Padding(
      padding: EdgeInsets.only(bottom: 12.h),
      child: Row(
        children: [
          CustomCheckBox(
            fillColor: AppColors.generalBlue,
            scale: 1.5,
            isChecked: isChecked,
            onChanged: (_) {
              context.read<FilterCubit>().selectFilter(filterType);
            },
          ),
          SizedBox(width: 5.w),
          Text(text, style: Styles.body2Medium),
        ],
      ),
    );
  }
}
