import 'package:flutter/material.dart';
import 'package:quick_mart/core/utils/app_colors.dart';
import 'package:quick_mart/core/utils/styles.dart';

void showErroeSnakBar(context, {required String content}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: AppColors.generalRed,
      content: Text(
        content,
        style: Styles.captionRegular.copyWith(color: AppColors.brandWhite),
      ),
    ),
  );
}
