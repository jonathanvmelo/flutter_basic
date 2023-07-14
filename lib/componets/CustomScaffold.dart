import 'package:flutter/material.dart';
import 'package:flutter_project/componets/drawer/custom_drawer.dart';

class CustomScaffold extends StatelessWidget {
  final String title;
  final Color  appBarColor;
  final Widget child;
  final Drawer drawer;

  const CustomScaffold({required this.title, required this.appBarColor, required this.child, super.key, required CustomDrawer endDrawer, required this.drawer});

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
