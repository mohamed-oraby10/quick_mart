import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:quick_mart/core/extensions/app_localization_extension.dart';
import 'package:quick_mart/core/utils/app_colors.dart';
import 'package:quick_mart/core/utils/styles.dart';

class PhoneNumberTextField extends StatelessWidget {
  const PhoneNumberTextField({super.key, this.onChanged});
  final void Function(String phone)? onChanged;

  @override
  Widget build(BuildContext context) {
    return IntlPhoneField(
      validator: (phone) {
        if (phone!.number.isEmpty) {
          return context.locale.field_required;
        }
        return null;
      },
      dropdownTextStyle: Styles.captionRegular.copyWith(
        color: AppColors.grey100,
      ),
      dropdownIcon: Icon(Icons.arrow_drop_down_sharp, size: 24.sp),
      decoration: InputDecoration(),
      initialCountryCode: 'EG',
      onChanged: (phone) {
        onChanged?.call(phone.completeNumber);
      },
    );
  }
}
