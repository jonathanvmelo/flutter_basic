
import 'package:flutter/material.dart';

class CustomAppBar extends AppBar {
  String strTitle;
  Color color;

  CustomAppBar(this.strTitle, this.color);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(strTitle),
      backgroundColor: color,

    );
  }
}
