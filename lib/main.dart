import 'package:flutter/material.dart';

void main() {
  runApp(const QuickMart());
}

class QuickMart extends StatelessWidget {
  const QuickMart({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: Scaffold(),
    );
  }
}
