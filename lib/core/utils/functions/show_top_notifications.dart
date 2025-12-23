import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/core/widgets/app_slide_notification.dart';

void showTopNotification(
  BuildContext context,
  String message,
) {
  OverlayState overlayState = Overlay.of(context);
  late OverlayEntry overlayEntry;

  overlayEntry = OverlayEntry(
    builder: (context) {
      return Positioned(
        top: 44.h,
        left: 16.w,
        right: 16.w,
        child: Material(
          type: MaterialType.transparency,
          child: Builder(
            builder: (context) => Theme(
              data: Theme.of(context),
              child: SlideNotification(message: message),
            ),
          ),
        ),
      );
    },
  );

  overlayState.insert(overlayEntry);

  Future.delayed(const Duration(seconds: 4), () {
    overlayEntry.remove();
  });
}
