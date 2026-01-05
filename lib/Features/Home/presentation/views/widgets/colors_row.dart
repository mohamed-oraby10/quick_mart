import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/Features/Home/presentation/views/widgets/product_colors_list_view.dart';
import 'package:quick_mart/core/extensions/app_localization_extension.dart';
import 'package:quick_mart/core/utils/styles.dart';

class ColorsRow extends StatelessWidget {
  const ColorsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.h),
      child: SizedBox(
        height: 24.h,
        width: 160.w,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ProductColorsListView(),
            SizedBox(width: 8.w),
            GestureDetector(
              onTap: () {},
              child: Text(
                context.locale.all_colors,
                style: Styles.overlineRegular.copyWith(
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
