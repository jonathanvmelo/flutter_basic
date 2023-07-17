import 'package:flutter/material.dart';
import 'package:flutter_project/componets/custom_bottom_navigator_bar/custom_bottom_bar.dart';


class Exe01 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exercício 1"),
      ),
      body: Center(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [

              Text("Flutter é legal!", style: TextStyle(fontSize: 50,
              color: Color.fromRGBO(43, 114, 69, 0.5019607843137255),
              decoration: TextDecoration.underline, fontWeight: FontWeight.bold),),

             Icon(Icons.add),

          ],
        ),
      ),
      // bottomNavigationBar: CustomBottomBar(),
    );

  }
}
