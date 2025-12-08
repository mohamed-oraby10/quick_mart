import 'package:flutter/material.dart';
import 'package:quick_mart/Features/Checkout/presentation/views/widgets/card_text_field.dart';
import 'package:quick_mart/core/widgets/app_text_field.dart';

class CardDetails extends StatelessWidget {
  const CardDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppTextField(hint: 'Enter card holder name', text: 'Card Holder Name'),
        CardTextField(),
      ],
    );
  }
}
