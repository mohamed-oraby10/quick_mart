import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:quick_mart/core/extensions/app_localization_extension.dart';
import 'package:quick_mart/core/utils/app_routes.dart';
import 'package:quick_mart/core/widgets/app_logo.dart';
import 'package:quick_mart/core/widgets/arrow_left_icon.dart';
import 'package:quick_mart/core/widgets/custom_image.dart';
import 'package:quick_mart/core/widgets/custom_text_button.dart';

class CardColumn extends StatelessWidget {
  const CardColumn({
    super.key,
    required this.image,
    required this.currentIndex,
  });
  final String image;
  final int currentIndex;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 18.w),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 20.h),
            child: Row(
              children: [
                currentIndex == 0 ? AppLogo() : ArrowLeftIcon(),
                Spacer(),
                currentIndex == 2
                    ? Container()
                    : CustomTextButton(
                        textButton: context.locale.skip_for_now,
                        onTap: () =>
                            GoRouter.of(context).go(AppRoutes.kRegisterView),
                      ),
              ],
            ),
          ),
          SizedBox(height: 46.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 26.w),
            child: CustomImage(image: image),
          ),
          SizedBox(height: 70.h),
        ],
      ),
    );
  }
}
