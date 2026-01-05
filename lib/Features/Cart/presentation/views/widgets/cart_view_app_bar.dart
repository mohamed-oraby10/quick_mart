import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/Features/Cart/presentation/views/widgets/voucher_code_bottom_sheet.dart';
import 'package:quick_mart/core/extensions/app_localization_extension.dart';
import 'package:quick_mart/core/utils/styles.dart';
import 'package:quick_mart/core/widgets/arrow_left_icon.dart';
import 'package:quick_mart/core/widgets/custom_text_button.dart';

class CartViewAppBar extends StatelessWidget {
  const CartViewAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ArrowLeftIcon(),
        SizedBox(width: 12.w),
        Text(context.locale.my_cart, style: Styles.body2Medium),
        Spacer(),
        CustomTextButton(
          textButton: context.locale.voucher_code,
          onTap: () {
            showModalBottomSheet(
              context: context,
              builder: (context) {
                return VoucherCodeBottomSheet();
              },
            );
          },
        ),
      ],
    );
  }
}
