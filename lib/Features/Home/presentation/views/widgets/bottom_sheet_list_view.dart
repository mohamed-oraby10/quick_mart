import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/Features/Home/presentation/views/widgets/check_box_bottom_sheet.dart';

class BottomSheetListView extends StatelessWidget {
  const BottomSheetListView({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> options = [
      'Price (Low to High)',
      'Price (High to Low)',
      'A-Z',
      'Z-A',
    ];
    return SizedBox(
      height: 224.h,
      width: double.infinity,
      child: ListView.builder(
        itemCount: options.length,
        itemBuilder: (BuildContext context, int index) {
          return CheckBoxBottomSheet(text: options[index]);
        },
      ),
    );
  }
}
