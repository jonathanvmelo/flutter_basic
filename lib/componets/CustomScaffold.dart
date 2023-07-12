import 'package:flutter/material.dart';

class CustomScaffold extends StatelessWidget {
  final String title;
  final Color  appBarColor;
  final Widget child;

  const CustomScaffold({required this.title, required this.appBarColor, required this.child, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.title),
        backgroundColor: this.appBarColor,
      ),
      body: this.child,
    );
  }
}
