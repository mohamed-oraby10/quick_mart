import 'package:flutter/material.dart';
import 'package:quick_mart/core/utils/app_colors.dart';
import 'package:quick_mart/core/utils/styles.dart';

void showErrorSnakBar(context, {required String content}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: AppColors.generalRed,
      content: Text(
        content,
        style: Styles.captionSemiBold.copyWith(color: AppColors.brandWhite),
      ),
    ),
  );
}
