import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/Features/Home/presentation/views/widgets/check_box_bottom_sheet.dart';

class BottomSheetListView extends StatelessWidget {
  const BottomSheetListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120.h,
      width: double.infinity,
      child: ListView(
        children: [
          CheckBoxBottomSheet(text: 'Price (Low to High)'),
          CheckBoxBottomSheet(text: 'Price (High to Low)'),
        ],
      ),
    );
  }
}
