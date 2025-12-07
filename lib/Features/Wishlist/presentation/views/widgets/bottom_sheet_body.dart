import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/core/utils/styles.dart';
import 'package:quick_mart/core/widgets/main_button.dart';

class BottomSheetBody extends StatelessWidget {
  const BottomSheetBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 32.h),
          Text('Delete product from wishlist', style: Styles.body1Medium),
          SizedBox(height: 24.h),
          MainButton(text: 'Delete (1) product', onTap: () {}),
          SizedBox(height: 12.h),
          MainButton(text: 'Cancel'),
        ],
      ),
    );
  }
}
