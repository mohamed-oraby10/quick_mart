import 'package:flutter/material.dart';

class AuthTextField extends StatelessWidget {
  const AuthTextField({super.key, this.controller, required this.hint});
  final TextEditingController? controller;
  final String hint;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value!.isEmpty) {
          return 'Field is required';
        }
        return null;
      },
      controller: controller,
      decoration: InputDecoration(hintText: hint),
    );
  }
}
