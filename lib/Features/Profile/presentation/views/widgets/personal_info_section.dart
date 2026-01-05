import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:quick_mart/Features/Profile/presentation/views/widgets/profile_item.dart';
import 'package:quick_mart/core/extensions/app_localization_extension.dart';
import 'package:quick_mart/core/utils/app_routes.dart';
import 'package:quick_mart/core/utils/styles.dart';

class PersonalInformationSection extends StatelessWidget {
  const PersonalInformationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          context.locale.personal_information,
          style: Styles.captionSemiBold,
        ),
        SizedBox(height: 15.h),
        ProfileItem(
          icon: Iconsax.box_outline,
          title: context.locale.shipping_address,
          onTap: () =>
              GoRouter.of(context).push(AppRoutes.kShippingAddressView),
        ),
        ProfileItem(
          icon: Iconsax.card_tick_1_outline,
          title: context.locale.payment_method,
          onTap: () => GoRouter.of(context).push(AppRoutes.kPaymentMethodView),
        ),
        ProfileItem(
          icon: Iconsax.receipt_edit_outline,
          title: context.locale.order_history,
          onTap: () => GoRouter.of(context).push(AppRoutes.kOrderHistoryView),
        ),
      ],
    );
  }
}
