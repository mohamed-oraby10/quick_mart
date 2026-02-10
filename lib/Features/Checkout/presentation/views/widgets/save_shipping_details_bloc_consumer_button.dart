import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:quick_mart/Features/Cart/domain/entities/cart_item_entity.dart';
import 'package:quick_mart/Features/Checkout/domain/entities/order_entity.dart';
import 'package:quick_mart/Features/Checkout/presentation/manager/save_order_cubit/save_order_cubit.dart';
import 'package:quick_mart/core/extensions/app_localization_extension.dart';
import 'package:quick_mart/core/utils/app_routes.dart';
import 'package:quick_mart/core/utils/functions/show_error_snak_bar.dart';
import 'package:quick_mart/core/utils/functions/show_success_snack_bar.dart';
import 'package:quick_mart/core/widgets/app_circular_progress_indicator.dart';
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
    return BlocConsumer<SaveOrderCubit, SaveOrderState>(
      listener: (BuildContext context, SaveOrderState state) {
        if (state is SaveOrderSuccess) {
          showSuccessSnakBar(
            context,
            content: context.locale.order_placed_successfully,
          );
          GoRouter.of(
            context,
          ).push(AppRoutes.kCheckoutPaymentBody, extra: extra);
        } else if (state is SaveOrderFailure) {
          showErrorSnakBar(context, content: state.errMessage);
        }
      },
      builder: (context, state) {
        if (state is SaveOrderLoading) {
          return AppCircularProgressIndicator();
        }
        return MainButton(
          text: context.locale.save,
          onTap: () {
            if (formKey.currentState!.validate()) {
              BlocProvider.of<SaveOrderCubit>(context).saveOrder(
                order: OrderEntity(
                  fullName: nameController.text,
                  phoneNum: phoneNumber ?? '',
                  customerAddress: addressController.text,
                  countryName: countyController.text,
                  provinceName: provinceController.text,
                  city: cityController.text,
                  productsList: products ?? [],
                ),
              );
            }
          },
        );
      },
    );
  }
}
