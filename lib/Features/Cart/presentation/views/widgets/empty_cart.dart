import 'package:flutter/material.dart';
import 'package:quick_mart/core/extensions/app_localization_extension.dart';
import 'package:quick_mart/core/utils/assets_data.dart';
import 'package:quick_mart/core/widgets/empty_body.dart';

class EmptyCart extends StatelessWidget {
  const EmptyCart({super.key});

  @override
  Widget build(BuildContext context) {
    return EmptyBody(
      image: AssetsData.cart,
      title:context.locale.your_cart_empty,
      desc:
          context.locale.cart_empty_desc,
    );
  }
}
