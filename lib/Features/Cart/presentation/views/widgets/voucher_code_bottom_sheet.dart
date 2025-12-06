import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/Features/Cart/presentation/views/widgets/voucher_bottom_sheet_body.dart';
import 'package:quick_mart/core/utils/app_colors.dart';
import 'package:quick_mart/core/utils/theme/extensions/theme_extension.dart';

class VoucherCodeBottomSheet extends StatelessWidget {
  const VoucherCodeBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 224.h,
      width: double.infinity,
      decoration: BoxDecoration(
        color: context.isDarkMode ? AppColors.brandBlack : AppColors.brandWhite,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24.r),
          topRight: Radius.circular(24.r),
        ),
      ),
      child: VoucherBottomSheetBody(),
    );
  }
}
