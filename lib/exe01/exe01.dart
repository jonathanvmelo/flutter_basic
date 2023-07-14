import 'package:flutter/material.dart';
import 'package:flutter_project/componets/drawer/custom_drawer.dart';

class Exe01 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navbar projeto aula 2"),
      ),
      endDrawer: CustomDrawer(),
      body: Center(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [

              Text("Flutter é legal!", style: TextStyle(fontSize: 50,
              color: Color.fromRGBO(150, 15, 15, 0.5),
              decoration: TextDecoration.underline, fontWeight: FontWeight.bold),),

             Icon(Icons.add),

          ],
        ),
      ),
    );

  }
}
