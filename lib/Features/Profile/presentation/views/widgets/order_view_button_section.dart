import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/Features/Profile/presentation/views/widgets/order_view_button.dart';

class OrderViewButtonSection extends StatelessWidget {
  const OrderViewButtonSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        OrderViewButton(text: 'Ongoing', onTap: () {}),
        SizedBox(width: 8.w),
        OrderViewButton(text: 'Completed'),
      ],
    );
  }
}
