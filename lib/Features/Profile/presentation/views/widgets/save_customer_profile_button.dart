import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:quick_mart/Features/Checkout/domain/entities/order_entity.dart';
import 'package:quick_mart/Features/Profile/presentation/manager/update_shipping_address_cubit/update_shipping_address_cubit.dart';
import 'package:quick_mart/core/extensions/app_localization_extension.dart';
import 'package:quick_mart/core/utils/functions/show_error_snak_bar.dart';
import 'package:quick_mart/core/widgets/app_circular_progress_indicator.dart';
import 'package:quick_mart/core/widgets/main_button.dart';

class UpdateShippingAddressButton extends StatelessWidget {
  const UpdateShippingAddressButton({
    super.key,
    required this.formKey,
    required this.nameController,
    required this.phoneNumber,
    required this.addressController,
    required this.countyController,
    required this.provinceController,
    required this.cityController,
  });

  final GlobalKey<FormState> formKey;
  final TextEditingController nameController;
  final String? phoneNumber;
  final TextEditingController addressController;
  final TextEditingController countyController;
  final TextEditingController provinceController;
  final TextEditingController cityController;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UpdateShippingAddressCubit, UpdateShippingAddressState>(
      listener: (context, state) {
        if (state is UpdateShippingAddressSuccess) {
          GoRouter.of(context).pop();
        } else if (state is UpdateShippingAddressFailure) {
          showErrorSnakBar(context, content: state.errMessage);
        }
      },
      builder: (context, state) {
        if (state is UpdateShippingAddressLoading) {
          return const AppCircularProgressIndicator();
        }
        return MainButton(
          text: context.locale.save,
          onTap: () {
            if (formKey.currentState!.validate()) {
              context.read<UpdateShippingAddressCubit>().updateShippingAddress(
                order: OrderEntity(
                  fullName: nameController.text.trim(),
                  phoneNum: phoneNumber ?? '',
                  customerAddress: addressController.text.trim(),
                  countryName: countyController.text.trim(),
                  provinceName: provinceController.text.trim(),
                  city: cityController.text.trim(),
                  productsList: [],
                ),
              );
            }
          },
        );
      },
    );
  }
}
