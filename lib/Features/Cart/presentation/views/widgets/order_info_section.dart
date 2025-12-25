import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/Features/Cart/domain/entities/cart_item_entity.dart';
import 'package:quick_mart/Features/Cart/presentation/views/widgets/order_info_row.dart';
import 'package:quick_mart/core/utils/styles.dart';

class OrderInfoSection extends StatelessWidget {
  const OrderInfoSection({super.key, required this.products});
  final List<CartItemEntity> products;

  @override
  Widget build(BuildContext context) {
    final totalPrice = products.fold<double>(
      0,
      (sum, item) => sum + (item.quantity * item.product.productPrice),
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Order Info', style: Styles.body1Medium),
        SizedBox(height: 12.h),
        OrderInfoRow(
          title: 'Subtotal',
          value: '\$${totalPrice.toStringAsFixed(2)}',
        ),
        OrderInfoRow(title: 'Shipping Cost', value: '\$0.00'),
        Padding(
          padding: EdgeInsets.only(bottom: 17.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Total', style: Styles.body1Medium),
              Text(
                '\$${totalPrice.toStringAsFixed(2)}',
                style: Styles.body1Medium,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
