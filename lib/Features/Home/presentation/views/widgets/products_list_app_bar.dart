import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:quick_mart/Features/Home/presentation/views/widgets/filter_icon_button.dart';
import 'package:quick_mart/core/utils/app_routes.dart';
import 'package:quick_mart/core/utils/styles.dart';
import 'package:quick_mart/core/utils/theme/extensions/theme_extension.dart';
import 'package:quick_mart/core/widgets/arrow_left_icon.dart';

class ProductsListAppBar extends StatelessWidget {
  const ProductsListAppBar({
    super.key,
    required this.title,
    this.isProductsView = false,
  });
  final String title;
  final bool isProductsView;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ArrowLeftIcon(),
            SizedBox(width: 12.w),
            Text(title, style: Styles.body2Medium),
            Spacer(),
            FilterIconButton(isProductsView: isProductsView, title: title),
            IconButton(
              onPressed: () =>
                  GoRouter.of(context).push(AppRoutes.kProductsSearchView),
              icon: Icon(Iconsax.search_normal_1_outline, size: 32.sp),
            ),
          ],
        ),
        Divider(color: context.customColors.buttonColor),
        SizedBox(height: 12.h),
      ],
    );
  }
}
