import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:quick_mart/Features/Checkout/presentation/views/widgets/text_successful_section.dart';
import 'package:quick_mart/core/extensions/app_localization_extension.dart';
import 'package:quick_mart/core/utils/app_routes.dart';
import 'package:quick_mart/core/utils/assets_data.dart';
import 'package:quick_mart/core/widgets/custom_container.dart';
import 'package:quick_mart/core/widgets/custom_image.dart';
import 'package:quick_mart/core/widgets/main_button.dart';

class OrderPlaceViewBody extends StatelessWidget {
  const OrderPlaceViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 20.h),
          Stack(
            children: [
              CustomContainer(),
              SizedBox(
                height: 408.h,
                width: 328.w,
                child: Center(child: CustomImage(image: AssetsData.orderPlace)),
              ),
            ],
          ),
          TextSuccessfulSection(),
          MainButton(
            text: context.locale.continue_shopping,
            onTap: () => GoRouter.of(context).push(AppRoutes.kHomeView),
          ),
        ],
      ),
    );
  }
}
