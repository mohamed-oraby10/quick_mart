import 'package:flutter/material.dart';
import 'package:quick_mart/core/utils/app_colors.dart';
import 'package:quick_mart/core/utils/styles.dart';

void showSuccessSnakBar(context, {required String content}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: AppColors.grey100,
      content: Text(
        content,
        style: Styles.captionSemiBold.copyWith(color: AppColors.brandBlack),
      ),
    ),
  );
}
