import 'package:flutter/material.dart';
import 'package:quick_mart/Features/Cart/presentation/views/widgets/view_cart_notify.dart';
import 'package:quick_mart/Features/Home/domain/entities/product_entity.dart';

class SlideNotification extends StatefulWidget {
  final String message;
  final ProductEntity product;

  const SlideNotification({super.key, required this.message, required this.product});

  @override
  State<SlideNotification> createState() => _SlideNotificationState();
}

class _SlideNotificationState extends State<SlideNotification>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<Offset> offset;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: const Duration(milliseconds: 300));
    offset = Tween(begin: const Offset(0, -1), end: const Offset(0, 0))
        .animate(controller);
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: offset,
      child: ViewCartNotify(message: widget.message, product: widget.product),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
