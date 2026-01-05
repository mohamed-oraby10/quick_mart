import 'package:flutter/material.dart';
import 'package:quick_mart/core/extensions/app_localization_extension.dart';
import 'package:quick_mart/core/utils/assets_data.dart';
import 'package:quick_mart/core/widgets/empty_body.dart';

class EmptyOngoingOrder extends StatelessWidget {
  const EmptyOngoingOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return EmptyBody(
      image: AssetsData.ongoingOrder,
      title:context.locale.no_ongoing_order,
      desc:
         context.locale.no_ongoing_order_desc,
    );
  }
}
