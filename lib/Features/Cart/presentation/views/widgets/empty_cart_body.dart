import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:quick_mart/core/utils/app_routes.dart';
import 'package:quick_mart/core/utils/assets_data.dart';
import 'package:quick_mart/core/utils/styles.dart';
import 'package:quick_mart/core/utils/theme/extensions/theme_extension.dart';
import 'package:quick_mart/core/widgets/custom_image.dart';
import 'package:quick_mart/core/widgets/main_button.dart';

class EmptyCartBody extends StatelessWidget {
  const EmptyCartBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomImage(image: AssetsData.cart),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.h),
              child: Text('Your cart is empty', style: Styles.heading2Bold),
            ),
            Text(
              'Looks like you have not added anything in your cart. Go ahead and explore top categories.',
              style: Styles.body2Regular.copyWith(
                color: context.customColors.secondaryColor,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 24.h),
            MainButton(
              text: 'Explore Categories',
              onTap: () => GoRouter.of(context).push(AppRoutes.kCategoriesView),
            ),
          ],
        ),
      ),
    );
  }
}
