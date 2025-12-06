import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/core/utils/styles.dart';
import 'package:quick_mart/core/widgets/main_button.dart';

class VoucherBottomSheetBody extends StatelessWidget {
  const VoucherBottomSheetBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 32.h),
          Text('Voucher Code', style: Styles.body1Medium),
          SizedBox(height: 16.h),
          TextField(
            decoration: InputDecoration(hintText: 'Enter Voucher Code'),
          ),
          SizedBox(height: 24.h),
          MainButton(text: 'Apply', onTap: () {}),
        ],
      ),
    );
  }
}
