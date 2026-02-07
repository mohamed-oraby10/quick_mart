import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  const MainButton({super.key, this.onTap, required this.text});
  final void Function()? onTap;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Center(child: ElevatedButton(onPressed: onTap, child: Text(text)));
  }
}
