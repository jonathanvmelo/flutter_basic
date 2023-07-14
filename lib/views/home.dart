import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../componets/drawer/custom_drawer.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: CustomDrawer(),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Home - App exercicios Flutter',
        ),
      ),
      body: Container(),

    );
  }
}


