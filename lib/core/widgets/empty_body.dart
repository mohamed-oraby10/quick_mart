import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:quick_mart/core/utils/app_routes.dart';
import 'package:quick_mart/core/utils/styles.dart';
import 'package:quick_mart/core/utils/theme/extensions/theme_extension.dart';
import 'package:quick_mart/core/widgets/custom_image.dart';
import 'package:quick_mart/core/widgets/main_button.dart';

class EmptyBody extends StatelessWidget {
  const EmptyBody({
    super.key,
    required this.image,
    required this.title,
    required this.desc,
  });
  final String image;
  final String title;
  final String desc;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomImage(image: image),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.h),
              child: Text(title, style: Styles.heading2Bold),
            ),
            Text(
            desc,
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
