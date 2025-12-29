import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:quick_mart/Features/Checkout/domain/entities/order_entity.dart';
import 'package:quick_mart/Features/Checkout/presentation/manager/save_order_cubit/save_order_cubit.dart';
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
  });

  final GlobalKey<FormState> formKey;
  final TextEditingController nameController,
      addressController,
      countyController,
      provinceController,
      cityController;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SaveOrderCubit, SaveOrderState>(
      listener: (BuildContext context, SaveOrderState state) {
        if (state is SaveOrderSuccess) {
          showSuccessSnakBar(
            context,
            content: 'your order is palced successfully',
          );
          GoRouter.of(context).push(AppRoutes.kCheckoutPaymentBody);
        } else if (state is SaveOrderFailure) {
          showErroeSnakBar(context, content: state.errMessage);
        }
      },
      builder: (context, state) {
        if (state is SaveOrderLoading) {
          return AppCircularProgressIndicator();
        }
        return MainButton(
          text: 'Save',
          onTap: () {
            if (formKey.currentState!.validate()) {
              BlocProvider.of<SaveOrderCubit>(context).saveOrder(
                order: OrderEntity(
                  fullName: nameController.text,
                  phoneNum: '000000000',
                  customerAddress: addressController.text,
                  countryName: countyController.text,
                  provinceName: provinceController.text,
                  city: cityController.text,
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
