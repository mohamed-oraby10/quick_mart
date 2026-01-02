import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/core/utils/app_colors.dart';
import 'package:quick_mart/core/utils/styles.dart';
import 'package:quick_mart/core/widgets/custom_check_box.dart';

class CheckBoxBottomSheet extends StatefulWidget {
  const CheckBoxBottomSheet({super.key, this.onChanged, required this.text});
  final void Function(bool?)? onChanged;
  final String text;

  @override
  State<CheckBoxBottomSheet> createState() => _CheckBoxBottomSheetState();
}

class _CheckBoxBottomSheetState extends State<CheckBoxBottomSheet> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 12.h),
      child: Row(
        children: [
          CustomCheckBox(
            fillColor: AppColors.generalBlue,
            scale: 1.5,
            isChecked: isChecked,
            onChanged: (value) {
              setState(() {
                isChecked = !isChecked;
              });
            },
          ),
          SizedBox(width: 5.w),
          Text(widget.text, style: Styles.body2Medium),
        ],
      ),
    );
  }
}
