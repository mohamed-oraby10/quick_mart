import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/Features/Checkout/presentation/views/widgets/phone_number_text_field.dart';
import 'package:quick_mart/Features/Checkout/presentation/views/widgets/shipping_order_details_row.dart';
import 'package:quick_mart/Features/Profile/presentation/views/widgets/save_customer_profile_button.dart';
import 'package:quick_mart/core/extensions/app_localization_extension.dart';
import 'package:quick_mart/core/utils/styles.dart';
import 'package:quick_mart/core/widgets/app_text_field.dart';

class ShippingAddressForm extends StatefulWidget {
  const ShippingAddressForm({super.key});

  @override
  State<ShippingAddressForm> createState() => _ShippingAddressFormState();
}

class _ShippingAddressFormState extends State<ShippingAddressForm> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  String? phoneNumber;
  TextEditingController nameController = TextEditingController(),
      addressController = TextEditingController(),
      countyController = TextEditingController(),
      provinceController = TextEditingController(),
      cityController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppTextField(
            hint: context.locale.enter_full_name,
            text: context.locale.full_name,
          ),
          Text(context.locale.phone_number, style: Styles.body2Medium),
          PhoneNumberTextField(
            onChanged: (value) {
              setState(() {
                phoneNumber = value;
              });
            },
          ),
          AppTextField(
            hint: context.locale.enter_street_address,
            text: context.locale.street_address,
          ),
          ShippingOrderDetailsRow(
            countyController: countyController,
            provinceController: provinceController,
          ),
          AppTextField(
            hint: context.locale.enter_city,
            text: context.locale.city,
          ),
          SizedBox(height: 24.h),
          UpdateShippingAddressButton(formKey: formKey, nameController: nameController, phoneNumber: phoneNumber, addressController: addressController, countyController: countyController, provinceController: provinceController, cityController: cityController),
        ],
      ),
    );
  }
}
