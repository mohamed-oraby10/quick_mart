import 'package:flutter/material.dart';
import 'package:quick_mart/core/utils/styles.dart';

class FailTextState extends StatelessWidget {
  const FailTextState({super.key, required this.message});
  final String message;

  @override
  Widget build(BuildContext context) {
    return Center(child: Text(message, style: Styles.body2Medium));
  }
}
