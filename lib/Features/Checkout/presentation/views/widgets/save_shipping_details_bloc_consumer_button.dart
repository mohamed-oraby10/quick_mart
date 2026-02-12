import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:quick_mart/Features/Cart/domain/entities/cart_item_entity.dart';
import 'package:quick_mart/Features/Checkout/domain/entities/order_entity.dart';
import 'package:quick_mart/core/extensions/app_localization_extension.dart';
import 'package:quick_mart/core/utils/app_routes.dart';
import 'package:quick_mart/core/widgets/main_button.dart';

class SaveShippingDetailsBlocConsumerButton extends StatelessWidget {
  const SaveShippingDetailsBlocConsumerButton({
    super.key,
    required this.formKey,
    required this.nameController,
    required this.addressController,
    required this.countyController,
    required this.provinceController,
    required this.cityController,
    this.products,
    required this.phoneNumber,
    required this.extra,
  });
  final List<CartItemEntity>? products;
  final GlobalKey<FormState> formKey;
  final String? phoneNumber;
  final TextEditingController nameController,
      addressController,
      countyController,
      provinceController,
      cityController;
  final Map<String, dynamic> extra;

  @override
  Widget build(BuildContext context) {
    return MainButton(
      text: context.locale.save,
      onTap: () {
        if (formKey.currentState!.validate()) {
          final order = OrderEntity(
            fullName: nameController.text,
            phoneNum: phoneNumber ?? '',
            customerAddress: addressController.text,
            countryName: countyController.text,
            provinceName: provinceController.text,
            city: cityController.text,
            productsList: products ?? [],
          );
          extra['order'] = order;
          GoRouter.of(
            context,
          ).push(AppRoutes.kCheckoutPaymentBody, extra: extra['order']);
        }
      },
    );
  }
}
