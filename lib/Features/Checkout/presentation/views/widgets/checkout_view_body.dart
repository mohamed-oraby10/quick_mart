import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/Features/Cart/domain/entities/cart_item_entity.dart';
import 'package:quick_mart/Features/Checkout/presentation/views/widgets/checkout_stepper_section.dart';
import 'package:quick_mart/Features/Checkout/presentation/views/widgets/phone_number_text_field.dart';
import 'package:quick_mart/Features/Checkout/presentation/views/widgets/save_shipping_details_bloc_consumer_button.dart';
import 'package:quick_mart/Features/Checkout/presentation/views/widgets/shipping_order_details_row.dart';
import 'package:quick_mart/core/extensions/app_localization_extension.dart';
import 'package:quick_mart/core/utils/styles.dart';
import 'package:quick_mart/core/widgets/app_text_field.dart';
 
class CheckoutViewBody extends StatefulWidget {
  const CheckoutViewBody({super.key, required this.products});
  final List<CartItemEntity> products;

  @override
  State<CheckoutViewBody> createState() => _CheckoutViewBodyState();
}

class _CheckoutViewBodyState extends State<CheckoutViewBody> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  String? phoneNumber;
  TextEditingController nameController = TextEditingController(),
      addressController = TextEditingController(),
      countyController = TextEditingController(),
      provinceController = TextEditingController(),
      cityController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CheckoutStepperSection(isShipping: true),
              AppTextField(
                hint: context.locale.enter_full_name,
                text: context.locale.full_name,
                controller: nameController,
              ),
              Text(context.locale.phone_number, style: Styles.body2Medium),
              SizedBox(height: 8.h),
              PhoneNumberTextField(
                onChanged: (value) {
                  phoneNumber = value;
                },
              ),
              AppTextField(
                hint: context.locale.enter_street_address,
                text: context.locale.street_address,
                controller: addressController,
              ),
              ShippingOrderDetailsRow(
                countyController: countyController,
                provinceController: provinceController,
              ),
              AppTextField(
                hint: context.locale.enter_city,
                text: context.locale.city,
                controller: cityController,
              ),
              SizedBox(height: 12.h),
              SaveShippingDetailsBlocConsumerButton(
                products: widget.products,
                formKey: formKey,
                nameController: nameController,
                addressController: addressController,
                countyController: countyController,
                provinceController: provinceController,
                cityController: cityController,
                phoneNumber: phoneNumber ?? '',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
